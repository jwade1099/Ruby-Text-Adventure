#Justin Wade 4/21/20
#require_relative  'test'

#-------------------------------------------------------------------------------------------------------------------------------------------
#functions

def function1 (value)
  return value+2
end
#-------------------------------------------------------------------------------------------------------------------------------------------
class Planet

  def initialize(name, wood, toxic, iron, fossils, sheeps)
  @name = name
  @wood = wood
  @toxic = toxic
  @iron = iron
  @fossils = fossils
  @sheep = sheeps
  end

  def getName
    return @name
  end

  def getWood
    return @wood
  end

  def getToxic
    return @toxic
  end

  def getIron
    return @iron
  end
  def getfossils
    return @fossils
  end
  def getSheeps
    return @sheeps
  end

end
#-------------------------------------------------------------------------------------------------------------------------------------------

count = 0
health = 100
invalid = "Invalid answer"
answers = []
i=0
#-------------------------------------------------------------------------------------------------------------------------------------------
def getPlanetinfo(planet)
  puts "welcome to planet "+ planet.getName()
  if(planet.getToxic())<= 40
    puts "This planet appears to have a very breathable atmosphere"
  end
  if (planet.getToxic())>40
    puts ("Be careful in this atmosphere!")
  end

puts "Radar shows that this planet has"
end


#-------------------------------------------------------------------------------------------------------------------------------------------
def help()
  puts"Hello this is help."
end
#-------------------------------------------------------------------------------------------------------------------------------------------



  def response() #return boolean true if input = yes

    print "  > "
    input = gets.chomp
    if (input=="yes"||input=="y")
      return true
    end
    if (input =="Yes"|| input=="Y")
      return true
    end
    if (input=="help")
      help()
      statement= response()
    end
    return statement
  end


#-------------------------------------------------------------------------------------------------------------------------------------------
def wait(waittime)
  waittime.times do
    print " 。 "
    sleep(1)
  end
  puts" "
end
#-------------------------------------------------------------------------------------------------------------------------------------------
def options


#-------------------------------------------------------------------------------------------------------------------------------------------
#food
apple = 30
pumpkinpie = 70

#-------------------------------------------------------------------------------------------------------------------------------------------
puts "Welcome to this game. Before we start I need to ask some questions."
puts "Are you a boy or a girl?"
loop do
gender = gets.chomp
 break if (gender=="boy"|| gender == "girl")
 puts invalid
end
print "Enter your name: "
name = gets.chomp
puts "Welcome #{name} to your new adventures. This is secret mission AXZ-519, sent by US Government to gather "
puts "new intelligience and resources from plants deep in the galaxy."
puts "We are not certain what the following years will hold for you. Do you accept?"
if (response()==true)
  puts "welcome"
else
  puts "oh well soldier, you had good potential"
  return 1
end
puts "here are some more details about your mission. You are on starcruiser M-732. "
puts "This is the only ship in existence, with supersonic speed capabilities"
puts "it can travel up to 1000 times faster than the next fastest rocket"

puts "We are going to explore the first planet, known as Xeeb"
wait(5)

xeeb = Planet.new("xeeb",120,30,100, 20, 23)

puts getPlanetinfo(xeeb)
