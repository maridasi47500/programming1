require 'nokogiri'
require 'open-uri'
@artist=[]
@maliste=[]
"1".upto("11").each do |nombre|
  p nombre
  @doc=Nokogiri::HTML(URI.open("https://www.mistralfm.com/artistes-#{nombre}"))
@doc.css(".whole-div-link.title-link h4").each do |x|
  @artist.push(x.text.strip.titleize.split("(")[0].strip)
end
end
["British","American","Australian"].each do |pays|
  p pays
  "A".upto("Z").each do |alphabet|
    @doc=Nokogiri::HTML(URI.open("https://en.wikipedia.org/w/index.php?title=Category:#{pays}_women_pop_singers&from=#{alphabet}"))

@doc.css(".mw-category-group a").each do |x|
  @maliste.push(x.text.strip.titleize)
end
  end
rescue => e
  p e
end
p @artist.map{|g|" "+g+" "}.join+"hey"
p @maliste[1]+"hey"
p @artist & @maliste
