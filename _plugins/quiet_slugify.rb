# Jekyll Scholar builds detail-page placeholders even when detail pages are not
# used. Empty BibTeX fields (for example `chapter = {}`) make Jekyll warn about
# an empty slug. Slugifying an empty string already returns an empty string, so
# skip the warning rather than emitting noise on every build.
module Jekyll
  module Utils
    class << self
      alias_method :original_slugify, :slugify

      def slugify(string, mode: nil, cased: false)
        return "" if string.to_s.empty?

        original_slugify(string, mode: mode, cased: cased)
      end
    end
  end
end
