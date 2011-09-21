# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
      
    Country.create( :name => "Switzerland", :code => "CH")
    Country.create( :name => "Germanry", :code => "DE")
    Country.create( :name => "United Kingdom", :code => "UK")
    Country.create( :name => "United States", :code => "US")
    
    Pvsector.create( :name => "Education", :description => "Schools, Universities, etc.")
    Pvsector.create( :name => "Entertainment and Media", :description => "Media companies, Game, Video, etc.")
    Pvsector.create( :name => "Government", :description => "Government agencies")
    Pvsector.create( :name => "Consumer/Enduser", :description => "Consumer of goods and endusers")
    
    Svsector.create( :name => "Education", :description => "Schools, Universities, etc.")
    Svsector.create( :name => "Entertainment and Media", :description => "Media companies, Game, Video, etc.")
    Svsector.create( :name => "Government", :description => "Government agencies")
    Svsector.create( :name => "Consumer/Enduser", :description => "Consumer of goods and endusers")

    Target.create( :name => "PII", :description => "General Personal Identifying Data")
    Target.create( :name => "Credit Card Data")
    Target.create( :name => "Access Credentials")
    Target.create( :name => "Enterprise Confidential Data")
    Target.create( :name => "Other")
    
    Attacker.create( :name => "Organized Crime")
    Attacker.create( :name => "Structured Threads")
    Attacker.create( :name => "Script Kiddies")
    Attacker.create( :name => "Hacktivists")
    Attacker.create( :name => "Internal Accidential")
    Attacker.create( :name => "Internal Malicious")
    Attacker.create( :name => "State/Intelligence Agency/Information Warfare")
    Attacker.create( :name => "Unknown")
                    
    Attack.create( :name => "Website Penetration")
    Attack.create( :name => "General System Penetration")
    Attack.create( :name => "Phishing")
    Attack.create( :name => "Drive by Infections")
    Attack.create( :name => "General Malware")
    Attack.create( :name => "Missbehaviour")
    Attack.create( :name => "Stolen IT-Equipment")
    Attack.create( :name => "Document Disposal")
    Attack.create( :name => "Communication Interception")

    Blogpost.create( :header => "Welcome on the new OSID news feed", :content => "This is the new OSID news feed with lots of information....")
    Blogpost.create( :header => "News 1", :content => "just some text....")
    Blogpost.create( :header => "News 2", :content => "just some text....")
    Blogpost.create( :header => "news 3", :content => "just some text....")
    
    Incident.create( :name => "RSA Hack", :summary => "RSA Hack Summary", :user_id => 2, :pvsector_id => 1, :svsector_id => 1, :attacker_id => 1, :target_id => 1, :country_id => 1)
    Incident.create( :name => "Hack 1", :summary => "Hack 1 Summary", :user_id => 3, :pvsector_id => 1, :svsector_id => 1, :attacker_id => 1, :target_id => 1, :country_id => 1)
    Incident.create( :name => "Hack 2", :summary => "Hack 2 Summary", :user_id => 1, :pvsector_id => 1, :svsector_id => 1, :attacker_id => 1, :target_id => 1, :country_id => 1)
    Incident.create( :name => "Hack 3", :summary => "Hack 3 Summary", :user_id => 3, :pvsector_id => 1, :svsector_id => 1, :attacker_id => 1, :target_id => 1, :country_id => 1)
    Incident.create( :name => "Hack 4", :summary => "Hack 4 Summary", :user_id => 3, :pvsector_id => 1, :svsector_id => 1, :attacker_id => 1, :target_id => 1, :country_id => 1)
    Incident.create( :name => "Hack 5", :summary => "Hack 5 Summary", :user_id => 1, :pvsector_id => 1, :svsector_id => 1, :attacker_id => 1, :target_id => 1, :country_id => 1)
    
    Event.create( :name => "News from the RSA Hack", :user_id => 2, :description => "This is the description of the new hack", :incident_id => 1)
    Event.create( :name => "RSA goes public", :user_id => 3, :description => "RSA goes public", :incident_id => 1)
    
    Source.create( :name => "RSA Hacked by criminals", :addition_id => 1, :user_id => 2, :summary => "reports say that criminals hacked the RSA infrastructure", :publisher => "The Register", :reference => "www.theregister.co.uk")
    Source.create( :name => "Public Letter from RSA", :addition_id => 2, :user_id => 3, :summary => "Art Coviello's Mea Culpa", :publisher => "RSA Inc", :reference => "www.rsa.com/openletter")
    Source.create( :name => "What realy happend", :addition_id => 1, :user_id => 2, :summary => "A behind the sceens report", :publisher => "Ars Technica", :reference => "www.ars.com")

    