# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#load up the name files

  Name.delete_all
  User.delete_all
  Settings.delete_all

  @boy 
  File.open("name_files/boy.txt").each_line{ |s|
    @boy = s[0..-2]
    Name.create(:name => @boy , :gender => 'male' , :category => 'first')
  }
  
  @girl
  File.open("name_files/girl.txt").each_line{ |s|
    @girl = s[0..-2]
    Name.create(:name => @girl, :gender => 'female' , :category => 'first')
  }

  @middle
    File.open("name_files/middle.txt").each_line{ |s|
    @middle = s[0..-2]
    Name.create(:name => @middle, :gender => 'both' , :category => 'middle')
  }

  @th
    File.open("name_files/th_nofn.txt").each_line{ |s|
    @th = s[0..-2]
    Name.create(:name => @th, :gender => 'both' , :category => 'th')
  }

