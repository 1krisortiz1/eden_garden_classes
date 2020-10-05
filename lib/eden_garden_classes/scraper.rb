class EdenGardenClasses::Scraper
  def scrape_categories
    doc = Nokogiri::HTML(open('https://www.edenproject.com/learn/for-everyone'))
    binding.pry
  end
end