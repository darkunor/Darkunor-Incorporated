# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.delete_all

Country.create name: 'Kyrgyzstan', flag: 'http://en.wikipedia.org/wiki/Kyrgyzstan#mediaviewer/File:Flag_of_Kyrgyzstan.svg', map: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/maps/kg-map.gif', video: 'kyrgyzstan.webm', population: 5500000, summary: 'A Central Asian state bordering China, Kyrgyzstan became independent with the collapse of the Soviet Union in 1991.', continent_id: 4
Country.create name: 'Switzerland', flag: 'http://en.wikipedia.org/wiki/Switzerland#mediaviewer/File:Flag_of_Switzerland_(Pantone).svg', map: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/maps/sz-map.gif', video: 'Switzerland.webm', population: 7997000, summary: 'A landlocked, mountainous country, Switzerland''s geographical position in central Europe and studious neutrality have given it the access and political stability to become one of the world''s wealthiest countries.', continent_id: 3
Country.create name: 'Brazil' , flag: 'http://en.wikipedia.org/wiki/Brazil#mediaviewer/File:Flag_of_Brazil.svg', map: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/maps/br-map.gif', video: 'brazil.webm', population: 198700000, summary: 'Brazil is South America''s most influential country, an economic giant and one of the world''s biggest democracies.', continent_id: 2
Country.create name: 'USA' , flag: 'http://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png', map: 'http://www.mapsofworld.com/usa/images2011/usa-map.gif', video: '', population: 314000000, summary: 'The USA is the world\'s foremost economic and military power, with global interests and an unmatched global reach.', continent_id: 1
Country.create name: 'Mexico' , flag: "http://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/1200px-Flag_of_Mexico.svg.png", map: 'http://www.lonelyplanet.com/maps/north-america/mexico/map_of_mexico.jpg', video: '', population: 120800000, summary: 'Mexico is a nation where affluence, poverty, natural splendour and urban blight rub shoulders.', continent_id: 1
Country.create name: 'Argentina' , flag: 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/1200px-Flag_of_Argentina.svg.png', map: 'http://www.wordtravels.com/images/map/Argentina_map.jpg', video: '', population: 41008000, summary: 'Argentina stretches 4,000 km from its sub-tropical north to the sub-antarctic south.', continent_id: 2
Country.create name: 'Turkey', flag: 'http://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/1200px-Flag_of_Turkey.svg.png', map: 'http://i.infoplease.com/images/mturkey.gif', video: '', population: 74000000, summary: 'Once the centre of the Ottoman Empire, the modern secular republic was established in the 1920s by nationalist leader Kemal Ataturk.', continent_id: 3
Country.create name: 'China', flag: 'http://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/1200px-Flag_of_the_People%27s_Republic_of_China.svg.png', map: 'http://www.lonelyplanet.com/maps/asia/china/map_of_china.jpg', video: '', population: 1351000000, summary: 'China is the world\'s most populous country, with a continuous culture stretching back nearly 4,000 years.', continent_id: 4



 