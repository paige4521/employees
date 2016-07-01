require_relative 'employees.rb'

class Department

   #?  Do I need to add the attr_reader? I know this allows instance variables to be accessible
   #outside of their class.  I suppose so, as the employee class will need to access info from the department class

  def initialize (dept_name:" ")
     @dept_name = dept_name
     @employees = []
  end

  def add_employee(add_employee)
    @add_employee = add_employee
    return @add_employee
  end

  def display_employee
    return @employees
  end

  def dept_name
    @dept_name
    return @dept_name

  end

  #def department_salary
      #if @dept_name == @dept_name #how do I send only those depts that have the same name into an array
      #  salary = new_dept_salary.each do |salary| #I am trying to tell the system to add the salary for each department
          #that is in the newly created array that stores only employees in the same department.

      #end
  #end

  def department_salary_raise

  end

end


#Add an employee to a deparment...do I do this here or in the employee class.  What'ts
