require "RMagick"
class Gifanime
  attr_accessor :frames, :delay, :iterations, :scene, :ticks_per_secound, :outputfile

  def initialize(outputfile, options = {})
    @delay             = options[:delay]
    @iterations        = options[:iterations]
    @scene             = options[:scene]
    @ticks_per_secound = options[:ticks_per_secound]
    outputfile = outputfile + ".gif" unless outputfile =~ /\.gif\z/
    @outputfile        = outputfile
    @frames = []
  end

  def add(frame)
    frames << frame
  end

  def generate!
    gif = ::Magick::ImageList.new(*frames)
    gif.delay = delay if delay
    gif.iterations = iterations if iterations
    gif.scene = scene if scene
    gif.ticks_per_secound = ticks_per_secound if ticks_per_secound
    gif.write(outputfile)
  end
end

GifAnime = Gifanime
