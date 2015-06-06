# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
logger = Logger.new(STDOUT)
logger.debug('- - - - - - - - - - - - - - - - - - - - - - - - - -')

answers = [
        {:title => "facebook", :value => "03-06"},
        {:title => "instagram", :value => "Rue de la Colonie"},
        {:title => "lastfm", :value => "True Survivor"},
        {:title => "twitter", :value => "Merguez"}
]

created_elems = 0

answers.each do |answer|
  if !(Answer.find_by(:title => answer[:title]))
    Answer.create(answer)
		logger.debug('Answer créée : ' + answer[:title])
    created_elems += 1
  end
end

logger.debug(' => ' + created_elems.to_s + ' answer(s) seeded')

