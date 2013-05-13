# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

PICTUREPREFIX = "db/seeds"


# Dir.foreach("#{PICTUREPREFIX}") do |pic|
#   next if pic == '.' or pic == '..'

(1..4).each do |counter|
  entry = Entry.new

  entry.title = "Question #{counter}"
  entry.question = File.new("#{PICTUREPREFIX}/question-#{counter}.png")
  entry.answer = File.new("#{PICTUREPREFIX}/answer-#{counter}.png")
  entry.explanation = "Explanation #{counter}"
  entry.tags = "#mdp, #final200#{counter}"

  entry.save
end

