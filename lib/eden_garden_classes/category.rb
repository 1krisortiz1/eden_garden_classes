class EdenGardenClasses::Category
  @@all = []
  attr_accessor :name 

  def initialize(name)
    @name = name
    save
  end

  def self.all
    EdenGardenClasses::Scraper.scrape_categories if @@all.empty?
    @@all
  end

  def save
    @@all << self
  end
end
