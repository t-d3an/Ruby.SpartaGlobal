class Person
  require 'Date'
  attr_accessor :first_name, :surname, :dob, :fullname
    attr_reader :phone_number, :email
    
  def initialize(fname=nil,sname=nil,date=nil)
    @first_name = fname
    @surname = sname
    @dob = date
    @email = []
    @phone_number = []
  end
    
  def add_email(mail)
    @email << mail
  end
    
  def add_number(phone)
    @phone_number << phone
  end
    
  def remove_email(rmail)
    @email.delete_at(rmail)
  end
    
  def remove_number(rphone)
    @phone_number.delete_at(rphone)
  end

  def to_s
    "#{@first_name} #{@surname} was born on #{@dob}. The email addresses are; #{@email}. and the phone numbers are #{@phone_number}."
  end
    
  def fullname
    "#{@first_name} #{@surname}"
  end
    
  def print_details
    puts "#{@fullname}\n"
    puts "-" * @fullname.length
    puts "Date of Birth: #{@dob.strftime("%d %B %Y")}\n"
    
    puts "Email Addresses:\n"
    @email.each do |x|
      puts "#{x}\n"
    end
    
    puts "Phone Numbers:\n"
    @phone_number.each do |y|
      puts "#{@phone_number}\n"
    end
  end

end

class FamilyMember < Person
  attr_accessor :relationship
    
  def initialize (fname=nil,sname=nil,date=nil)
    @relationship = nil
    super
  end
    
  def to_s
    "#{@first_name} #{@surname} is person's #{@relationship}"
  end
    
end

class AddressBook
  attr_reader :person
    
  def initialize
    @person = []
  end
  
  def add_person(pson)
    @person << pson
  end
    
  def list
    puts "Address Book\n --------\n"
    @person.each_with_index do |x,index|
      puts "Entry #{index+1}: #{x.fullname}"
    end
  end
end