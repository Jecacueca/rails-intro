class PagesController < ApplicationController

  def about
  end

  def home
  end

  def contact
    # Define an array of teachers and make it an INSTANCE variable
    # Putting the @ infront of the name makes it accessible from the view
    @teachers = ["Anne", "Dareos", "Luca", "Grazia", "Arbi", "Jess"]

    # Grab the search query from the params
    # This is a hash -> You can use a raise to pause the code and look at the params
    search = params[:teacher]

    # If there is a search query, we will filter the @teachers array
    if search.present?
      @teachers = @teachers.select{ |name| name.downcase == search.downcase}
    end
    # raise
  end
end
