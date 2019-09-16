#!/bin/bash          

TEX=`basename $1`



LABELDB="labels.txt"
rm -rf $LABELDB

BASEFILE=`basename $TEX .tex`
MDFILE="${BASEFILE}.md"
cp $1 $MDFILE
sed -i 's,casenv,itemize,g'  $MDFILE
python latex2markdown.py $MDFILE 1.tmp
mv 1.tmp $MDFILE
rm -rf 1.tmp


sed -i '/\\include/d' $MDFILE
sed -i '/\\author/d' $MDFILE
sed -i '/\\input/d' $MDFILE
sed -i '/\\makeatother/d' $MDFILE
sed -i '/\\maketitle/d' $MDFILE
sed -i '/\\addbibresource/d' $MDFILE
sed -i '/\\printbibliography/d' $MDFILE
sed -i '/\\begin{abstract}/d' $MDFILE
sed -i '/\\end{abstract}/d' $MDFILE
sed -i '/%%/d' $MDFILE

sed -i 's,\\title{\(.*\)},title: \1\n---,g'  $MDFILE
dat=`cat $BASEFILE.date`
sed -i "s,title,---layout: post\ntitle,g"  $MDFILE
sed -i "s,layout,\ndate: $dat\nlayout,g"  $MDFILE

########Citatations
sed -i 's,\\cite{\(.*\)},\{% cite  \1 %\},g'  $MDFILE

sed -i '1N;N;/^\n\n$/ { N;s/^\n\n//;N;D; };P;D' $MDFILE

#sed -i 's,\\begin{itemize},<p style="margin-left:10%; margin-right:10%;">,g' $MDFILE
#sed -i 's,\\end{itemize},</p>,g' $MDFILE


sed -i 's,\\\[,\\begin{equation},g' $MDFILE
sed -i 's,\\\],\\end{equation},g' $MDFILE

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

itemizemode=0
rm -rf 1.tmp
touch 1.tmp
while IFS= read -r line
do
   if [ -z "$line" ]
   then
     echo "$line" >> 1.tmp
     continue
   fi

  if echo "$line" | grep -q "begin{itemize}"; then
    itemizemode=1
    continue
  fi
  if echo "$line" | grep -q "end{itemize}"; then
    itemizemode=0
    continue
  fi

  if [ $itemizemode -eq 0 ]; then
     echo "$line" >> 1.tmp
     continue
  fi
  firstchar=`echo "$line" | cut -c 1`
  if [ $itemizemode -eq 1 ] && [ "$firstchar" == "*" ]; then
     echo "    $line" >> 1.tmp
     continue
  fi
  echo "$line" >> 1.tmp
done < "$MDFILE"

mv 1.tmp $MDFILE

sed -i '/./,$!d' $MDFILE

echo "###  References" >>  $MDFILE
echo "{% bibliography --cited %}" >> $MDFILE

sed -i 's,\\label{eq,ttttt,g' $MDFILE

sed -i  's,\\label{.*,,g' $MDFILE

sed -i 's,ttttt,\\label{eq,g' $MDFILE
mv $MDFILE $dat-$MDFILE


