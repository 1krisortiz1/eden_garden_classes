class EdenGardenClasses::Scraper

  def self.scrape_categories
    doc = Nokogiri::HTML(open('https://www.edenproject.com/learn/for-everyone'))
    
    categories = doc.css("div.filter_inner label.option")
    
    categories.each do |c|
      name = c.text
      EdenGardenClasses::Category.new(name)
    end
  end
end