class EdenGardenClasses::CLI
  def call
    puts "Welcome to Eden Classes!"
    get_categories
    get_user_category
    # get_events_for(category)
    # list_events
  end

    def get_categories
      # to be scraped instead
      @categories = ['Gardening', 'Communities', 'Green Living', 'Play and Create', 'Learn at Home']
    end

    def get_user_category
      # list categories
      @categories.each.with_index() { | category, index| 
        puts "#{index}. #{category}"
      }
    end
end
