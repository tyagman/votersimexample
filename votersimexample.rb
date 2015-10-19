
Chris Morse [5:14 PM]
joined #richards, and invited @tyagman, @stefan, @ganieto
Chris Morse
[5:15 PM]
Uploaded an image: Slack for iOS Upload
Add Comment

German Nieto [5:20 PM]
http://stackoverflow.com/questions/19261061/picking-a-random-option-where-each-option-has-a-different-probability-of-being

Picking a random option, where each option has a different probability of being picked
Suppose that you are given three "options", A, B and C. Your algorithm must pick and return a random one. For this, it is pretty simple to just put them in an array {A,B,C} and generate a random n...

----- October 17th -----

German Nieto [1:36 PM]
Decided to come to GP if anyone is bored I'll be here haha

German Nieto [3:38 PM]
Yo looking at this project again now and its huuuge do you guys think tomorrow is enough to build it all?

Stefan Sobers [8:08 PM]
Oh shit just saw this

Stefan Sobers [8:09 PM]
We just have put it all together right?

----- Yesterday October 18th, 2015 -----

Chris Morse [9:10 AM]
Well it's due Monday evening so I think we are good. We can build the menu system today and get the MVP working.

Stefan Sobers [9:21 AM]
cool cool

Stefan Sobers [9:21 AM]
we still on for 10?

Tyler Yagman [9:46 AM]
Yea

Tyler Yagman [9:46 AM]
Running 10 late guys

Chris Morse [9:49 AM]
I'm here

Stefan Sobers [9:57 AM]
Almost there

German Nieto [10:08 AM]
hey guys running late gonna be there around 11, waiting for my sister to get back to get the car
German Nieto
[10:09 AM]
Added a Ruby snippet: politics.rb
​
#Method to begin Voter Simulation 5000====================================
def start
  puts <<-Germ
  Welcome to the Voter Simulator 5000 (BETA).
  What would you like to do?
  (C)reate
  (L)ist
  (U)pdate
  (V)ote
Add Comment Click to expand inline 46 lines

German Nieto [10:09 AM]
theres some stuff i was working on yesterday

Chris Morse [10:16 AM]
code looks awesome, we won't do a thing until you get here then.

Tyler Yagman [10:17 AM]
Jk

German Nieto [10:26 AM]
lol

Chris Morse [10:30 AM]
Why arrays?
Chris Morse
[10:38 AM]
Added a Plain Text snippet: ver 1.1
#Method to begin Voter Simulation 5000====================================
def start
  puts <<-Germ
  Welcome to the Voter Simulator 5000 (BETA).
  What would you like to do?
  (C)reate
  (L)ist
  (U)pdate
  (V)ote
  Germ
Add Comment Click to expand inline 43 lines

German Nieto [10:39 AM]
i just put it into array for when people are created

Tyler Yagman [10:40 AM]
whats with the a= 1, b = 0 , c = 0 stuff on the voter sim?

German Nieto [10:42 AM]
that was just to test it out to see if it was working
Tyler Yagman
[11:00 AM]
Added a Plain Text snippet
module Humans
class Overlords < Humans
  def initialize(name, party)
    @name = name
    @party = party
  end
end
class Sheeple < Humans
  def initialize(name, affiliation)
Add Comment Click to expand inline 22 lines

German Nieto [11:03 AM]
Omw
German Nieto
[12:00 PM]
Uploaded an image: Slack for Android Upload
Add Comment
Chris Morse
[12:31 PM]
Added a Plain Text snippet
#Method to begin Voter Simulation 5000====================================
def start
  puts <<-Germ
  Welcome to the Voter Simulator 5000 (BETA).
  What would you like to do?
  (C)reate
  (L)ist
  (U)pdate
  (V)ote
  Germ
Add Comment Click to expand inline 35 lines
Chris Morse
[12:31 PM]
Added a Plain Text snippet
class Politicians
  attr_accessor :name, :party
  def initialize(name, party)
    @name = name
    @party = party
  end
end
class Sheeple
Add Comment Click to expand inline 47 lines
German Nieto
[2:14 PM]
Added a Plain Text snippet
def list_all
  puts "You have created the following:"
  $democrat_list.each do |x|
    puts "#{x.name} #{x.party}"
end
Add Comment

Chris Morse [2:31 PM]
def list_all
 puts "Democratic Nominees:"
 $democrat_list.each do |x|
   puts "#{x.name} #{x.party}"
 end
 puts "Republican Nominees:"
 $republican_list.each do |x|
   puts "#{x.name} #{x.party}"
 end
 puts "Registered Voters:"
 $voter_list.each do |x|
   puts "#{x.name} #{x.affiliation}"
 end
 start
end

Chris Morse [2:32 PM]
def list_all
 puts "Democratic Nominees:"
 $democrat_list.each do |x|
   puts " - #{x.name} #{x.party}"
 end
 puts "Republican Nominees:"
 $republican_list.each do |x|
   puts " - #{x.name} #{x.party}"
 end
 puts "Registered Voters:"
 $voter_list.each do |x|
   puts " - #{x.name} #{x.affiliation}"
 end
 start
end

Chris Morse [2:35 PM]
voter

Chris Morse [2:35 PM]
def create_voter #NEED TO CREATE ARRAYS FOR POLICITCIANS
 puts "Please enter the voter's name."
 voter = gets.chomp.capitalize
 puts "Please enter their political affiliation."
 puts "[T]ea Party, [C]onservative, [N]eutral, [L]iberal, or [S]ocialist."
 affiliation = gets.chomp.upcase #NEED DEFENSIVE PROGRAMMING

 case affiliation
 when "T"
     voter = Sheeple.new(voter, "Tea Party")
   when "C"
     voter = Sheeple.new(voter, "Conservative")
   when "N"
     voter = Sheeple.new(voter, "Neutral")
   when "L"
     voter = Sheeple.new(voter, "Liberal")
   when "S"
     voter = Sheeple.new(voter, "Socialist")
   else
     create_voter
 end
 $voter_list << voter
end

Chris Morse [3:09 PM]
def find
 puts "Who would you like to update?"
input = gets.chomp.downcase
$politician_list.each do |x|
   if input == x.name
     puts "What is the updated name?"
     new_name = gets.chomp.downcase
     new_name = x.name
   else
 puts "none"
   end
 end
end
Stefan Sobers
[3:48 PM]
Added and commented on a Plain Text snippet
puts <<-EOP
  |* * * * * * * * * * OOOOOOOOOOOOOOOOOOOOOOOOO|
  | * * * * * * * * *  :::::::::::::::::::::::::|
  |* * * * * * * * * * OOOOOOOOOOOOOOOOOOOOOOOOO|
  | * * * * * * * * *  :::::::::::::::::::::::::|
  |* * * * * * * * * * OOOOOOOOOOOOOOOOOOOOOOOOO|
  | * * * * * * * * *  ::::::::::::::::::::;::::|
  |* * * * * * * * * * OOOOOOOOOOOOOOOOOOOOOOOOO|
  |:::::::::::::::::::::::::::::::::::::::::::::|
  |OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO|
1 Comment Click to expand inline 16 lines
american flag (working)

Chris Morse [6:17 PM]
Todo: bulletproof party entry variables.

----- Today October 19th, 2015 -----
German Nieto
[9:29 AM]
Added a Ruby snippet: votesim.rb
​
​
#Method to begin Voter Simulation 5000====================================
​
class Politicians
  attr_accessor :name, :party, :vote
  def initialize(name, party, vote = 1)
    @name = name
    @party = party
    @vote = vote
Add Comment Click to expand inline 60 lines

German Nieto [9:29 AM]
Errors:
1. When it asks who would you like to update, if you put a wrong name it crashes
2. ^^ if you put a Republican it crashes
German Nieto
[9:35 AM]
Added a Ruby snippet: votesim.rb
​
​
#Method to begin Voter Simulation 5000====================================
​
class Politicians
  attr_accessor :name, :party, :vote
  def initialize(name, party, vote = 1)
    @name = name
    @party = party
    @vote = vote
Add Comment Click to expand inline 60 lines

Stefan Sobers [9:44 AM]
Nice

Stefan Sobers [9:44 AM]
Did anyone do/finish the homework??

German Nieto [9:51 AM]
working on it now

Tyler Yagman [2:07 PM]
we present on thursday...
NEW MESSAGES

Stefan Sobers [2:08 PM]
ok cool

German Nieto [2:18 PM]
oh damn

German Nieto [2:18 PM]
better fix those globals
German Nieto
[3:24 PM]
Added a Ruby snippet: votesim.rb
​
​
#Method to begin Voter Simulation 5000====================================
​
class Politicians
  attr_accessor :name, :party, :vote
  def initialize(name, party, vote = 1)
    @name = name
    @party = party
    @vote = vote
  end
end
​
class Sheeple
  attr_accessor :name, :affiliation
  def initialize(name, affiliation)
    @name = name
    @affiliation = affiliation
  end
end
​
$democrat_list = []
$republican_list = []
$voter_list = []
​
def error
  puts "That is not an option! Choose again!"
end
​
def vote
  $voter_list.each do |x|
    case x.affiliation
    when "Liberal"
      liberal
    when "Conservative"
      conservative
    when "Tea Party"
      teaparty
    when "Socialist"
      socialist
    when "Neutral"
      neutral
    else
      puts "bullhsit"
    end
  end
  results
end
​
​
def start
  puts <<-Germ
  Welcome to the Voter Simulator 5000 (BETA).
  What would you like to do?
  (C)reate
  (L)ist
  (U)pdate
  (V)ote
  Germ
  answer = gets.chomp.upcase
  case answer
  when "C"  #NEED TO ADD DEFENSIVE PROGRAMMING
    create  #LOOK AT BATMAN TO SEE HOW TO REFACTOR MORE
  when "L"
    list_all
  when "U"
    update
  when "V"
    vote
  else
    error #leads to error message method
  end
end
​
#CREATE ==========================================================
def create
  puts <<-Germ
  What would you like to create?
  (P)olitician or (V)oter
  Germ
  choice = gets.chomp.upcase
  case choice
  when "P"
    create_politician #LEADS TO POLICITCIAN METHOD
  when "V"
    create_voter #LEADS TO VOTER METHOD
  else
    error #LEADS TO ERROR MESSAGE METHOD
    create
  end
end
#==========================================================================
#METHOD TO CREATE A POLITICIAN/VOTER
def create_politician #NEED TO CREATE ARRAYS FOR POLICITCIANS
  puts "Please enter the first and last name of the new politician"
  politician = gets.chomp
  puts "Please enter a party of new politician"
  puts "(D)emocrat or (R)epublican"
  party = gets.chomp.upcase #NEED DEFENSIVE PROGRAMMING
  case party
    when "D"
      politician = Politicians.new(politician, "Democrat")
      $democrat_list << politician
      create_another_politician
    when "R"
      politician = Politicians.new(politician, "Republican")
      $republican_list << politician
      create_another_politician
    else
      error
      create_politician
  end
end
#==========================================================================
#CREATE A VOTER METHOD=====================================================
def create_voter #NEED TO CREATE ARRAYS FOR POLICITCIANS
 puts "Please enter the voter's name."
 voter = gets.chomp
 puts "Please enter their political affiliation."
 puts "[T]ea Party, [C]onservative, [N]eutral, [L]iberal, or [S]ocialist."
 affiliation = gets.chomp.upcase #NEED DEFENSIVE PROGRAMMING
​
 case affiliation
 when "T"
     voter = Sheeple.new(voter, "Tea Party")
     $voter_list << voter
     create_another_voter
   when "C"
     voter = Sheeple.new(voter, "Conservative")
     $voter_list << voter
     create_another_voter
   when "N"
     voter = Sheeple.new(voter, "Neutral")
     $voter_list << voter
     create_another_voter
   when "L"
     voter = Sheeple.new(voter, "Liberal")
     $voter_list << voter
     create_another_voter
   when "S"
     voter = Sheeple.new(voter, "Socialist")
     $voter_list << voter
     create_another_voter
   else
     error
     create_voter
 end
 start
end
​
​
def list_all
  puts "Democratic Nominees:"
  $democrat_list.each do |x|
    puts " - #{x.name}: #{x.party}"
  end
  puts "Republican Nominees:"
  $republican_list.each do |x|
    puts " - #{x.name}: #{x.party}"
  end
  puts "Registered Voters:"
  $voter_list.each do |x|
    puts " - #{x.name}: #{x.affiliation}"
  end
  puts "Would you like to (U)pdate or go to the (M)enu?"
  l = gets.chomp.upcase
  case l
  when "U"
    update
  when "M"
  start
  else
    error
    list_all
  #find
end
end
​
​
#CREATE ANOTHER POLITICIAN=========================================
def create_another_politician
  puts "Would you like to create another Politician or go back to"
  puts "the main menu? (P)olitician or (M)enu"
  answer = gets.chomp.upcase
  case answer
  when "P"
    create_politician
  when "V"
    create_voter
  when "M"
    start
  else
    error
    create_another_politician
  end
end
#===================================================================
#CREATE ANOTHER VOTER===============================================
def create_another_voter
  puts "Would you like to create another Voter or go back to"
  puts "the main menu? (V)oter or (M)enu"
  answer = gets.chomp.upcase
  case answer
  when "P"
    create_politician
  when "V"
    create_voter
  when "M"
    start
  else
    error
    create_another_voter
  end
end
#UPDATE ============================================================
​
def update
  puts "Below are the Politicians and Voters you have created:"
  $democrat_list.each do |x|
    puts " - #{x.name}: #{x.party}"
  end
  puts "Republican Nominees:"
  $republican_list.each do |x|
    puts " - #{x.name}: #{x.party}"
  end
  puts "Registered Voters:"
  $voter_list.each do |x|
    puts " - #{x.name}: #{x.affiliation}"
  end
  puts ""
  find
end
​
# def find
#   puts "Who would you like to update?"
#   input = gets.chomp
#   $democrat_list.each do |x|
#     if input == x.name
#       puts "What is the updated name?"
#       new_name = gets.chomp.downcase
#       x.name = new_name
#       p $democrat_list
#       start
#     else
#       puts "We couldn't find anyone by that name."
#     end
#   end
# end
​
def find
  puts "Who would you like to update?"
​
  @input = gets.chomp
  $democrat_list.each do |x|
  dem_search
  # if @input == x.name
  #   dem_search
  # elsif
  #   rep_search
  # elsif
  #   voter_search
  else
    puts "error"
  end
end
    # puts "What would you like to update? [N]ame or [P]arty?"
end
​
def dem_search
    $democrat_list.each do |x|
    if @input == x.name
      puts "What would you like to update? [N]ame or [P]arty?"
      choice = gets.chomp.capitalize
        case choice
        when "N"
          puts "What is the updated name?"
          new_name = gets.chomp.capitalize
          x.name = new_name
        when "P"
          puts "What is the candidate's new party? (R)epublican or (D)emocrat."
          new_party = gets.chomp.capitalize
          if new_party == "R"
          new_party = "Republican"
          x.party = new_party
          elsif new_party == "D"
          new_party = "Democrat"
          x.party = new_party
          end
        else
          error
          dem_search
        end
       start
    else
      rep_search
    end
  end
end
​
def rep_search
    $republican_list.each do |x|
    if @input == x.name
      puts "What would you like to update?[N]ame or [P]arty?"
      choice = gets.chomp.upcase
        case choice
        when "N"
          puts "What is the updated name?"
          new_name = gets.chomp.upcase
          x.name = new_name
        when "P"
          puts "What is the candidate's new party? (R)epublican or (D)emocrat."
          new_party = gets.chomp.upcase
            if new_party == "R"
            new_party = "Republican"
            x.party = new_party
            elsif new_party == "D"
            new_party = "Democrat"
            x.party = new_party
            end
        # when "A"
        #   puts "What is the voter's new affiliation?"
        #   new_affiliation = gets.chomp.upcase
        #   x.affiliation = new_affiliation
        else
          error
          rep_search
        end
      start
    else
      voter_search
    end
  end
end
​
def voter_search
    $voter_list.each do |x|
    if @input == x.name
      puts "What would you like to update?[N]ame or [A]ffiliation?"
      choice = gets.chomp.upcase
        case choice
        when "N"
          puts "What is the updated name?"
          new_name = gets.chomp.upcase
          x.name = new_name
        # when "p"
        #   puts "What is the candidate's new party? (R)epublican or (D)emocrat."
        #   new_party = gets.chomp.upcase
        #   x.party = new_party
        when "A"
          puts "What is the voter's new affiliation?"
          puts "(T)ea Party, (C)onservative, (N)eutral, (L)iberal, (S)ocialist"
          new_affiliation = gets.chomp.upcase
          if new_affiliation == "T"
          new_affiliation = "Tea Party"
          x.party = new_affiliation
        elsif new_affiliation == "C"
          new_affiliation = "Conservative"
          x.party = new_party
          x.affiliation = new_affiliation
        elsif new_affiliation == "N"
          new_affiliation = "Neutral"
          x.party = new_party
          x.affiliation = new_affiliation
        elsif new_affiliation == "L"
          new_affiliation = "Liberal"
          x.party = new_party
          x.affiliation = new_affiliation
        elsif new_affiliation == "S"
          new_affiliation = "Socialist"
          x.party = new_party
          x.affiliation = new_affiliation
        end
        else
          error
          voter_search
        end
      start
    else
      puts "We couldn't find that name, pleasehangupand try again later."
    end
  end
end
#====================================================================
​
​
​
​
# class Vote=========================================================
# Tea Party==========================================================
# ​class Votesim
  def teaparty
      rep = (1..90).to_a
      rep = rep.shuffle.sample
      dem = (1..10).to_a
      dem = dem.shuffle.sample
      if dem > rep
        dem_won
      else
        rep_won
      end
end
#   # Conservative==========================================================
  def conservative
      rep = (1..75).to_a
      rep = rep.shuffle.sample
      dem = (1..25).to_a
      dem = dem.shuffle.sample
      if dem > rep
        dem_won
      else
        rep_won
      end
  end
#   # Neutral==========================================================
  def neutral
      rep = (1..50).to_a
      rep = rep.shuffle.sample
      dem = (1..50).to_a
      dem = dem.shuffle.sample
      if dem > rep
        dem_won
      else
        rep_won
      end
  end
#   # Socialist==========================================================
  def socialist
      rep = (1..10).to_a
      rep = rep.shuffle.sample
      dem = (1..90).to_a
      dem = dem.shuffle.sample
      if dem > rep
        dem_won
      else
        rep_won
      end
  end
  # Liberal==========================================================
  def liberal
      rep = (1..25).to_a
      rep = rep.shuffle.sample
      dem = (1..75).to_a
      dem = dem.shuffle.sample
      if dem > rep
        # puts "The winner is Democrat #{dem}. Loser is Republican #{rep}"
        dem_won
      else
        rep_won
        # puts "The winner is Repulican #{rep}. Loser is Democrat #{dem}"
      end
  end
# DEM WON==========================================================
def dem_won
  sample = $democrat_list.sample
  sample.vote +=1
end
​
def rep_won
  sample = $republican_list.sample
  sample.vote +=1
end
​
def results
  y = 0
  $democrat_list.each do |x|
    if x.vote > y
      y = x.vote
      @z = x.name
      @t = x.vote
      @a = x.party
    end
  end
  if @a == "Democrat"
    @a = "Democratic"
  else
    @a = "Republican"
  end
    puts " - #{@z} has won from the #{@a} party with #{@t} votes"
end
​
​
  start
  #liberal
# end
#
# v = Vote.new
# p v.teaparty​
#Example of shuffle sample==========================
# a = 1
# until a > 10
# rep = (0..10).to_a
# rep = rep.shuffle.sample
#   puts rep
#   a += 1
# end
#=================================================
Add Comment Collapse
