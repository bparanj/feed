xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Coding Jedi Podcast"
    xml.description "Learn to solve coding problems."
    xml.link root_url

    @videos.each do |video|
      xml.item do
        xml.title video.title
        xml.description video.description
        xml.pubDate video.published_at.to_s(:rfc822)
        xml.link video_url(video)
        xml.guid video_url(video)
      end
    end
  end
end