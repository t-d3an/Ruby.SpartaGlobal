class PersonalInformation
  attr_accessor :name, :dob, :age, :height
    attr_reader :fname, :mname, :sname

  def initialize
    @name = nil
    @dob = nil
    @age = 0
    @height = 0.0
    @fname = []
    @mname = []
    @sname = []
  end
    
  def na
    puts "Please enter your name ie.(Surname Firstname)"
    @name = gets.chomp
  end

  def db
    puts "Please enter your date of birth ie.(dd/mm/yyyy)"
    @dob = gets.chomp.to_i
  end

  def ag
    puts "Please enter your age in number"
    @age = gets.chomp.to_i
  end

  def he
    puts "Please enter your height in cm"
    @height = gets.chomp.to_i
  end

  def profile (prof)
    prof = {"Name"=>@name, "D.O.B"=>@dob, "Age"=>@age, "Height"=>@height}
    prof = Hash.new
  end
        
  def father
    puts "Please enter your father's name"
    @fname = gets.chomp
  end

  def mother
    puts "Please enter your mother's name"
    @mname = gets.chomp
  end

  def sibling
    puts "Do you have any siblings?"
    if yes
      puts "Please enter a sibling's name"
      @sname = gets.chomp
    else
  end
      
  def relatives (rel)
    rel = {"Father"=>@fname, "Mother"=>@mname, "Siblings"=>@sname}
    rel = Hash.new
  end

def display
  @name.each do |x,y|
      puts "#{x}: #{y}\n"
  @dob.each do |x,y|
      puts "#{x}: #{y}\n"
  @age.each do |x,y|
      puts "#{x}: #{y}\n"
  @height.each do |x,y|
      puts "#{x}: #{y}\n"
  @fname.each do |x,y|
      puts "#{x}: #{y}\n"
  @mname.each do |x,y|
      puts "#{x}: #{y}\n"
  @sname.each do |x,y|
      puts "#{x}: #{y}\n"
end