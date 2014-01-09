require 'pp'
module Jekyll
  class RenderTimeTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      print "\ntag_name = "
      pp tag_name
      print "text = "
      pp text
      print "tokens = "
      pp tokens

      @text = text
    end

    def render(context)
      puts "context = "
      pp context
      "#{@text} #{Time.now}"
    end
  end
end

Liquid::Template.register_tag('render_time', Jekyll::RenderTimeTag)
