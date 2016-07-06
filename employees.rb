
class Employee
  attr_reader :name,:email_add, :h_phone, :salary, :performance, :reviews #allows these instance variabl

  # Am I initializing too many instance variables?
  # Should I make some of these simple methods. I will go ahead and create.
  def initialize(name: , email_add:,  h_phone:, salary: 0)
     @name = name
     @email_add = email_add
     @h_phone = h_phone
     @salary = salary
     @reviews = []
  end

  def change_salary(percentage_raise: 0.0) #remember - this only changes the salary for this particularl employee
    @salary = @salary +(@salary*(percentage_raise/100))
  end

  def set_performance(performance: false )
       @performance = performance
   end

  def add_review(review)
    @reviews.push(review)
  end

end



# lamp = Employee.new(name: "ali", email_add: "ljones4521yahoo", h_phone: "444-222-2222", salary: 10000)
# lamp.set_performance(performance: true)
# puts lamp.performance
# lamp.add_review("this is my review...")
# puts lamp.reviews

# puts lamp.name
# puts lamp.email_add
# puts lamp.h_phone
# #puts lamp.salary
# puts lamp.change_salary(percentage_raise: 50.0)

#   def name   (commd+/ key - will add comments to a block of text; uncomment - do it again )
#     return "#{name} " #use return within your method vs puts.
#   end
#

#
#   #end
#
#
#
#   end
#
#   def employee_pass_fail(yes_no)
#       @yes_no = yes_no
#   end
#
# end
# I would like to sort the departments into individual arrays and then add
#those totals.
  #def dept_salary
  #    if dept_salary = dept_salary
  #end



 #lisa = Department.new(dept_name:"Texas Gold").add_dept("Adding Department")
 #puts lisa
