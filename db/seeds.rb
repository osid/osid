# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Load country codes
  Country.delete_all
    open("/Users/nik/Development/osid/db/static/countrycodes.txt") do |countries|
      countries.read.each_line do |country|
      code, name = country.chomp.split("|")
      Country.create!(:name => name, :code => code)
    end
  end
  puts "Loaded country codes"

# Load initial users
#  User.delete_all
#    open("/Users/nik/Development/osid/db/static/users.txt") do |users|
#      users.read.each_line do |user|
#        name, email, password, password_conf, admin, active = user.chomp.split("|")
#        User.create!(:name => name, :email => email, :password => password, :password_conf => password_conf, :admin => admin, :active => active)
#      end
#    end
#    puts "Loaded users"

# Load pvsectors
  Pvsector.delete_all
    open("/Users/nik/Development/osid/db/static/pvsectors.txt") do |pvsector|
      pvsector.read.each_line do |pvsector|
        name, description = pvsector.chomp.split("|")
        Pvsector.create!(:name => name, :description => description)
      end
    end
    puts "Loaded pvsector"

# Load svsectors
  Svsector.delete_all
    open("/Users/nik/Development/osid/db/static/svsectors.txt") do |svsector|
      svsector.read.each_line do |svsector|
        name, description = svsector.chomp.split("|")
        Svsector.create!(:name => name, :description => description)
      end
    end
    puts "Loaded svsector"

# Load weaknesses
Weakness.delete_all
  open("/Users/nik/Development/osid/db/static/weaknesses.txt") do |weakness|
    weakness.read.each_line do |weakness|
      name, description = weakness.chomp.split("|")
      Weakness.create!(:name => name, :description => description)
    end
  end
  puts "Loaded weaknesses"

# Load attacks
  Attack.delete_all
    open("/Users/nik/Development/osid/db/static/attacks.txt") do |attacks|
      attacks.read.each_line do |attacks|
        name, description = attacks.chomp.split("|")
        Attack.create!(:name => name, :description => description)
      end
    end
    puts "Loaded attacks"

# Load attacker
      Attacker.delete_all
        open("/Users/nik/Development/osid/db/static/attacker.txt") do |attacker|
          attacker.read.each_line do |attacker|
            name, description = attacker.chomp.split("|")
            Attacker.create!(:name => name, :description => description)
          end
        end
        puts "Loaded attacker"

# Load targets
  Target.delete_all
    open("/Users/nik/Development/osid/db/static/targets.txt") do |targets|
      targets.read.each_line do |target|
        name, description = target.chomp.split("|")
        Target.create!(:name => name, :description => description)
        end
    end
    puts "Loaded targets"