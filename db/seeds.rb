# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

journals = [{:iso => 'Pain', :title => 'Pain', :impact => 5.777},
            {:iso => 'Anesthesiology', :title => 'Anesthesiology', :impact => 5.359},
            {:iso => 'Br J Anaesth', :title => 'British Journal of Anesthesia', :impact => 4.243},
            {:iso => 'Reg Anesth Pain Med', :title => 'Regional Anesthesia and Pain Medicine', :impact => 4.079},
            {:iso => 'Eur J Pain', :title => 'European Journal of Pain', :impact => 3.939},
            {:iso => 'Anesth. Analg.', :title => 'Anesthesia and Analgesia', :impact => 3.286},
            {:iso => 'Anaesthesia', :title => 'Anaesthesia', :impact => 2.958},
            {:iso => 'Clin J Pain', :title => 'Clinical Journal of Pain', :impact => 2.813},
            {:iso => 'Minerva Anestesiol', :title => 'Minerva Anestesiologica', :impact => 2.656},
            {:iso => 'Can J Anaesth', :title => 'Canadian Journal of Anesthesia', :impact => 2.346},
            {:iso => 'J Neurosurg Anesthesiol', :title => 'Journal of Neurosurgical Anesthesia', :impact => 2.233},
            
            {:iso => 'Eur J Anaesthesiol', :title => 'European Journal of Anaesthesiology', :impact => 2.231},
            {:iso => 'Curr Opin Anaesthesiol', :title => 'Current Opinion in Anaesthesiology', :impact => 2.213},
            {:iso => 'Pain Pract', :title => 'Pain Practice: the Official Journal of World Institute of Pain', :impact => 2.207},
            {:iso => 'Acta Anaesthesiol Scand', :title => 'Acta Anaesthesiologica Scandinavica', :impact => 2.188},
#{:iso => '', :title => 'Pediatr Anesth', :impact => 2.1},
            {:iso => 'J Cardiothorac Vasc Anesth', :title => 'Journal of Cardiothoracic and Vascular Anesthesia', :impact => 1.64},
            {:iso => 'Int J Obstet Anesth', :title => 'International Journal of Obstetric Anesthesia', :impact => 1.395},
            {:iso => 'Anaesth Intensive Care', :title => 'Anaesthesia and Intensive Care', :impact => 1.279},
            {:iso => 'J Clin Anesth', :title => 'Journal of Clinical Anesthesia', :impact => 1.213},
#{:iso => '', :title => 'Anaesthesist', :impact => 0.987},
            {:iso => 'J Clin Monit Comput', :title => 'Journal of Clinical Monitoring and Computing', :impact => 0.887},
            {:iso => 'Schmerz', :title => 'Schmerz', :impact => 0.878},
            {:iso => 'Anasthesiol Intensivmed Notfallmed Schmerzther', :title => 'Anasthesiologie, Intensivmedizin, Notfallmedizin, Schmerztherapie: AINS', :impact => 0.862},
            {:iso => 'Ann Fr Anesth Reanim', :title => 'Annales Francaises d\'Anesthesie et de Reanimation', :impact => 0.838},
            {:iso => 'J Anesth', :title => 'Journal of Anesthesia', :impact => 0.831},
            {:iso => 'Anasth Intensivther Notfallmed', :title => 'Anasthesie, Intensivtherapie, Notfallmedizin', :impact => 0.413}
#{:iso => '', :title => 'Douleur Analg', :impact => 0.047}
  	   ]

journals.each do |j|
  Journal.delete_all(:iso => j[:iso]) #MAY NEED TO BE CHANGED TO DESTROY IF Journal MODEL IS CHANGED
  Journal.create!(j)
end
