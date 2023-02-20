class PagesController < ApplicationController
 def about

 end

 def home

 end

 def contact
  @members = ["thanh", "dimitri", "germain", "damien", "julien"]
  raise
  if params[:member]
    @members = @members.select { |member| member.start_with?(params[:member]) }
  end
  # params[:member] # => value comes from the form
 end
end
