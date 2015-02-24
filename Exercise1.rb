class PersonalInformation
  attr_accessor :name, :dob, :age, :height
    attr_reader :fname, :mname, :sname

  def initialize
    @name = nil
    @dob = nil
    @age = 0
    @heigth = 0.0
    @fname = []
    @mname = []
    @sname = []
  end
    
  def na (na)
    puts "Please enter your name ie.(Surname Firstname)"
    @name = gets.chomp
    na = @name
  end

  def db (db)
    puts "Please enter your date of birth ie.(dd/mm/yyyy)"
    @dob = gets.chomp.to_i
    db = @dob
  end

  def ag (db)
    puts "Please enter your age in number"
    @age = gets.chomp.to_i
    db = @age
    
  end

  def he (he)
    puts "Please enter your height in cm"
    @heigth = gets.chomp.to_i
    he = @heigth
  end

  def profile (prof)
    prof = {"Name"=>@name, "D.O.B"=>@dob, "Age"=>@age, "Height"=>@height}
    prof = Hash.new
  end
        
  def father (fa)
    puts "Please enter your father's name"
    @fname = gets.chomp
    fa = @fname
  end

  def mother (mo)
    puts "Please enter your mother's name"
    @mname = gets.chomp
    mo = @mname
  end

  def sibling (sib)
    puts "Do you have any siblings?"
    if yes.to_s
      puts "Please enter a sibling's name"
      @sname = gets.chomp
      sib = @sname
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