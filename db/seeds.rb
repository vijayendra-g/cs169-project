# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

journals = [{:iso => 'Pain', :title => 'Pain', :impact => 5.777},
            {:iso => 'Anesthesiology', :title => 'Anesthesiology', :impact => 5.359},
            {:iso => 'Reg Anesth Pain Med', :title => 'Regional Anesthesia and Pain Medicine', :impact => 4.079},
            {:iso => 'Br J Anaesth', :title => 'British Journal of Anesthesia', :impact => 4.243},
            {:iso => 'Eur J Pain', :title => 'European Journal of Pain', :impact => 3.939},
            {:iso => 'Anesth. Analg.', :title => 'Anesthesia and Analgesia', :impact => 3.286},
            {:iso => 'Clin J Pain', :title => 'Clinical Journal of Pain', :impact => 2.813},
            {:iso => 'Anaesthesia', :title => 'Anaesthesia', :impact => 2.958},
            {:iso => 'J Neurosurg Anesthesiol', :title => 'Journal of Neurosurgical Anesthesia', :impact => 2.233},
            {:iso => 'Can J Anaesth', :title => 'Canadian Journal of Anesthesia', :impact => 2.346}
  	   ]

journals.each do |j|
  Journal.delete_all(:iso => j[:iso]) #MAY NEED TO BE CHANGED TO DESTROY IF Journal MODEL IS CHANGED
  Journal.create!(j)
end
