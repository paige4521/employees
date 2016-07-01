
class Employee
  attr_reader :l_name, :f_name, :email_add, :h_phone, :salary #allows these instance variabl

  # Am I initializing too many instance variables?
  # Should I make some of these simple methods. I will go ahead and create.
  def initialize(l_name: "", f_name: "", email:"" , phone:"" , salary: 0)
     @l_name = l_name
     @f_name = f_name
     @email_add = email_add
     @h_phone = h_phone
     #@dept = dept
     @salary = salary
  end

  def name
    return "#{f_name} #{l_name}" #use return within your method vs puts.
  end

  #def salary

  #end

  def employee_review(review)
    @review = review

  end

  def employee_pass_fail(yes_no)
      @yes_no = yes_no
  end

end
# I would like to sort the departments into individual arrays and then add
#those totals.
  #def dept_salary
  #    if dept_salary = dept_salary
  #end



 #lisa = Department.new(dept_name:"Texas Gold").add_dept("Adding Department")
 #puts lisa
