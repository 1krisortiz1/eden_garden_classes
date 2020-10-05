class EdenGardenClasses::CLI
  def call
    puts "\nWelcome to Eden Classes!"
    get_categories
    list_categories
    get_user_category
    # get_events_for(category)
    # list_events
  end

  def get_categories
    # to be scraped instead
    @categories = ['Gardening', 'Communities', 'Green Living', 'Play and Create', 'Learn at Home']
  end

  def list_categories
    # list categories
    puts "Choose a category to see classes."
    @categories.each.with_index(1) { | category, index| puts "#{index}. #{category}" }
  end

  def get_user_category
    chosen_category = gets.strip.to_i 
    show_events_for(chosen_category) if valid_input(chosen_category, @categories)
  end

  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end

  def show_events_for(chosen_category)
    category = @categories[chosen_category - 1]
    puts "Here are classes for #{category}"
    # To implement
    # EdenGardenClasses::Event.all.each.with_index(1) do | event |
    #   puts event.name
    # end
    # get_user_event
  end
end