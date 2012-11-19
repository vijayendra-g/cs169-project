# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

journals = [{:iso => 'Pain', :title => 'Pain', :impact => 5.37},
            {:iso => 'Anesthesiology', :title => 'Anesthesiology', :impact => 5.35}
            {:iso => 'Reg Anesth Pain Med', :title => 'Regional Anesthesia and Pain Medicine', :impact => 4.16}
            {:iso => 'Br J Anaesth', :title => 'British Journal of Anesthesia', :impact => 3.83}
            {:iso => 'Eur J Pain', :title => 'European Journal of Pain', :impact => 3.61}
            {:iso => 'Anesth. Analg.', :title => 'Anesthesia and Analgesia', :impact => 3.08}
            {:iso => 'Clin J Pain', :title => 'Clinical Journal of Pain', :impact => 3.01}
            {:iso => 'Anaesthesia', :title => 'Anaesthesia', :impact => 2.86}
            {:iso => 'J Neurosurg Anesthesiol', :title => 'Journal of Neurosurgical Anesthesia', :impact => 2.41}
            {:iso => 'Can J Anaesth', :title => 'Canadian Journal of Anesthesia', :impact => 2.31}
  	   ]

journals.each do |j|
  Journal.create!(j)
end
