#!/bin/bash          

TEX=`basename $1`

LABELDB="labels.txt"
rm -rf $LABELDB

BASEFILE=`basename $TEX .tex`
MDFILE="${BASEFILE}.md"
cp $1 $MDFILE
#python -m latex2markdown $1 $MDFILE

#sed -i 's/_/\_/g' $MDFILE
sed -i 's/</\\lt /g' $MDFILE
sed -i 's/>/\\gt /g' $MDFILE

sed -i '/end{abstract}/d' $MDFILE
sed -i '/begin{abstract}/d' $MDFILE
sed -i '/begin{document}/d' $MDFILE
sed -i '/end{document}/d' $MDFILE
sed -i '/begin{casenv}/d' $MDFILE
sed -i '/end{casenv}/d' $MDFILE

sed -i '/\\include/d' $MDFILE
sed -i '/\\author/d' $MDFILE
sed -i '/\\maketitle/d' $MDFILE
sed -i '/\\usepackage/d' $MDFILE
sed -i '/\\providecommand/d' $MDFILE
sed -i '/\\setlist/d' $MDFILE
sed -i '/\\newlist/d' $MDFILE
sed -i '/\\input/d' $MDFILE
sed -i '/\\documentclass/d' $MDFILE
sed -i '/\\setcounter/d' $MDFILE
sed -i '/\\makeatletter/d' $MDFILE
sed -i '/\\theoremstyle/d' $MDFILE
sed -i '/\\newtheorem/d' $MDFILE
sed -i '/\\makeatother/d' $MDFILE
sed -i '/\\addbibresource/d' $MDFILE
sed -i '/\\printbibliography/d' $MDFILE
sed -i '/%%/d' $MDFILE

sed -i 's,\\title{\(.*\)},title: \1\n---,g'  $MDFILE
dat=`cat $BASEFILE.date`
sed -i "s,title,---layout: post\ntitle,g"  $MDFILE
sed -i "s,layout,\ndate: $dat\nlayout,g"  $MDFILE

sed -i 's,\\section{\(.*\)},##  \1,g'  $MDFILE
sed -i 's,\\subsection{\(.*\)},###  \1,g'  $MDFILE

########Citatations
sed -i 's,\\cite{\(.*\)},\{% cite  \1 %\},g'  $MDFILE

sed -i '1N;N;/^\n\n$/ { N;s/^\n\n//;N;D; };P;D' $MDFILE

#sed -i 's,\\label{[a-zA-Z0-9:]*}, ,g'  $MDFILE
#perl -0777 -i.original -pe 's/\\label{[a-zA-Z0-9:]*\n}//igs' $MDFILE

#sed -i 's,\\ref{[a-zA-Z0-9:]*}, ,g'  $MDFILE
#perl -0777 -i.original -pe 's/\\ref{[a-zA-Z0-9:]*\n}//igs' $MDFILE

sed -i 's,\\item,\n* ,g'  $MDFILE

sed -i 's,\\begin{problem}, <div style="background-color:bisque">\n<span style="font-size:larger;font-weight:bold">Problem:</span>\n,g'  $MDFILE
sed -i 's,\\end{problem},</div><br/>,g'  $MDFILE

sed -i 's,\\begin{lem}, <div style="background-color:bisque">\n<span style="font-size:larger;font-weight:bold">Lemma:</span>\n,g'  $MDFILE
sed -i 's,\\end{lem},</div><br/>,g'  $MDFILE

sed -i 's,\\begin{prop}, <div style="background-color:bisque">\n<span style="font-size:larger;font-weight:bold">Proposition:</span>\n,g'  $MDFILE
sed -i 's,\\end{prop},</div><br/>,g'  $MDFILE

sed -i 's,\\\[,\\begin{equation},g' $MDFILE
sed -i 's,\\\],\\end{equation},g' $MDFILE

sed -i 's,\\begin{rem}, <div style="background-color:bisque">\n<span style="font-size:larger;font-weight:bold">Remark:</span>\n,g'  $MDFILE
sed -i 's,\\end{rem},</div><br/>,g'  $MDFILE

sed -i 's,\\begin{defn}, <div style="background-color:bisque">\n<span style="font-size:larger;font-weight:bold">Definition:</span>\n,g'  $MDFILE
sed -i 's,\\end{defn},</div><br/>,g'  $MDFILE

sed -i 's,\\begin{cor}, <div style="background-color:bisque">\n<span style="font-size:larger;font-weight:bold">Corollary:</span>\n,g'  $MDFILE
sed -i 's,\\end{cor},</div><br/>,g'  $MDFILE

sed -i 's,\\begin{proof}, <div style="background-color:lightblue">\n<span style="font-size:larger;font-weight:bold">Proof:</span>\n,g'  $MDFILE
sed -i 's,\\end{proof},</div><br/>,g'  $MDFILE


ULSTR="lehgeogqpjjgqp"

#sed -i 's,\\textup{\(.*\)},\1,g'  $MDFILE

grep -oP '\\label{\K([a-zA-z:1-9-]*)' $1 | grep -v eq >> $LABELDB

NUM="1"

while IFS= read -r line
do
 linkid=`echo $line | sed  's/://g'`
 linkdq=`echo -n '"'; echo -n $linkid; echo -n '"'`
 echo $linkdq
 envname=`echo $line | awk -F ':' '{print $1}'`
 sed -i "s,\\label{$line},<a name="$linkdq">($envname $NUM)</a>,g" $MDFILE
 sed -i 's/\\</</g' $MDFILE
 echo "LABEL: $line"
 echo $envname
 #sed -i "s,\\ref{$line},[$envname $NUM]\(#$linkid\),g" $MDFILE
 sed -i 's,\\ref,ttttt,g' $MDFILE
 perl -0777 -i.original -pe "s/ttttt{$line}/[$envname $NUM](#$linkid)/igs" $MDFILE
 sed -i 's,ttttt,\\ref,g' $MDFILE
 #sed -i "s,\\ref{$line},[$envname $NUM](\#$linkid),g" $MDFILE
 NUM=$[$NUM + 1]

done < "$LABELDB"

sed -i '/./,$!d' $MDFILE

echo "###  References" >>  $MDFILE
echo "{% bibliography --cited %}" >> $MDFILE

mv $MDFILE $dat-$MDFILE


