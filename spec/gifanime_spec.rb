require "gifanime"
describe Gifanime do
  let(:images) do
    dir = File.dirname(__FILE__)
    %W{
      #{dir}/images/a.png
      #{dir}/images/b.png
      #{dir}/images/c.png
    }
  end

  describe "#generate!" do
    let(:outputfile) do
      "#{File.dirname(__FILE__)}/images/output.gif"
    end

    let(:gifanime) do
      Gifanime.new(outputfile)
    end

    before do
      images.each do |image|
        gifanime.add(image)
      end
    end

    after do
      path = Pathname.new(outputfile)
      path.delete if path.exist?
    end

    it "generates GIF animation" do
      gifanime.generate!.should be_a(::Magick::ImageList)
      File.read(outputfile).should_not be_empty
    end
  end
end
