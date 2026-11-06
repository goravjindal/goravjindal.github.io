require "latex/decode"

module Jekyll
  module SmartLatex
    MATH = /(\\\(.*?\\\)|\\\[.*?\\\])/m

    # Decode LaTeX accents and strip braces, but leave math segments untouched
    # so MathJax can render them in publication abstracts.
    def smart_latex(input)
      return input if input.nil?

      input.to_s.split(MATH).map.with_index do |part, index|
        if index.odd?
          part
        else
          begin
            LaTeX.decode(part)
          rescue StandardError
            part
          end
        end
      end.join
    end
  end
end

Liquid::Template.register_filter(Jekyll::SmartLatex)
