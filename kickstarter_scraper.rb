require "nokogiri"
require 'pry'


def create_project_hash

  kickstarter = Nokogiri::HTML(File.read('fixtures/kickstarter.html'))
    projects = {}

    kickstarter.css(".project grid_4").each do |project|
      title = project.css("h2.bbcard_name strong a").text
      projects[title.to_sym] = {}

    end
    projects

  # project: kickstarter.css(".project grid_4").first

  #image: project.css("div.project-thumbnail a img").attribute("src").value
  #description: project.css("p.bbcard_blurb").text
  #location: project.css("ul.project-meta span.location-name").text
  #percent-funded: prokect.class("ul.project-stats li.first.funded strong").gsub("$", "").to_i

  #____
  #return projects ??
binding.pry
end
