require "nokogiri"
require 'pry'


def create_project_hash

  kickstarter = Nokogiri::HTML(File.read('fixtures/kickstarter.html'))
  # kickstarter.css(".project grid_4").first

  #____
  #return projects ??

end
create_project_hash
  binding.pry
