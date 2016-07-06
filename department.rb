require_relative 'employees.rb'


class Department
 attr_reader :dept_name,:employees




  def initialize (dept_name,  employees=[])
     @dept_name = dept_name
     @employees = employees

  end

  def add_employee (employee)
     @employees.push(employee) #takes the parameter employee and pushes it into instance variable employee
  end

  def total_salaries #department total salaries
    total_salaries = 0
    @employees.each do |employee|
      total_salaries +=employee.salary
    end
    return total_salaries
  end

  def employee_raise (percentage:0.0) #applying raise to every employee who has a  good performance

    @employees.each do |employee|
      if employee.performance == true
        employee.change_salary(percentage_raise: percentage )
      end
    end
  end

end


employee1 = Employee.new(name: "Lisa", email_add: "ljones4521yahoo", salary: 500, h_phone: "123")
employee2 = Employee.new(name:"Jordan", email_add: "freshp", salary: 100, h_phone: "123")
employee3 = Employee.new(name: "Jenny", email_add: "yonillie", salary: 5, h_phone: "123")
employee1.set_performance(performance: true)
employee3.set_performance(performance: false)
employee2.set_performance(performance:true)
human_resources = Department.new("human_resources_department", [employee1, employee2, employee3])

human_resources.add_employee (Employee.new(name: "Bill", email_add: "crow", salary: 1, h_phone: "452")) #instead of creating a new object, we could
#have created another object handler (ie. janet = Employee.new (name: "Jane", email_add: "crow"...etc and instead we would have passed the object handler
#janet))
#janet = Employee.new(name:"JanetJackson", email_add: "lisa@yahoo.com", salary: 5000, h_phone: "453")


 human_resources.employee_raise(percentage: 25.0)

#so, add_employee method takes one parameter which is called employee.  To populate the parameter (employee) we called an entirely new object
#By doing this all of the data from the Employee class is passed into the employees.
  human_resources.employees.each do |x|
    puts x.name
    puts x.salary
  end

toy = Department.new("stone", [employee1, employee2, Employee.new(name: "JJ", email_add: "jj@jj.com", salary: 100, h_phone: "333")])
toy.employees.each do |employees|
  puts employees.name
end

puts human_resources.dept_name
puts human_resources.employees


toy.add_employee(Employee.new(name:"Jamie", email_add: "jamie@jamie.com", salary: 1, h_phone: "123"))

puts   "#{toy.employees}" #departments = [human_resources, toy]
 #puts "#{departments}"


 #puts departments
# in this example line 25 parameter employees[] is being populated with an acutal object (see lines 21 - 25.  )
