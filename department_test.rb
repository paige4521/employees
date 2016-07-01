require 'minitest/autorun'
require_relative 'department.rb'
#require_relative 'employee.rb'

class DepartmentTest < Minitest::Test

  def employees
    ::Department.new
  end

  def test_add_employee_to_department
       create = Department.new(dept_name:"Testing if Dept shows")
       jones = Employee.new(l_name: "jones", f_name: "lisa", email: "ljones4521yahoo.com", phone: "4102796970", salary: 10)

       assert_equal "Paige", create.add_employee("Paige")

  end

  def test_no_employee
      create =  Department.new(dept_name:"Testing if Dept shows")
      assert_equal  [], create.display_employee
  end

  def test_get_all_dept_employees
    create = Department.new(dept_name:"Testing if Dept shows")
    jones = Employee.new(l_name: "jones", f_name: "lisa", email: "ljones4521yahoo.com", phone: "4102796970", salary: 10)
    jj = Employee.new(l_name: "jj", f_name: "lisa", email: "ljones4521@gmail.com", phone: "4102796970", salary: 10)
    assert_equal "jonesjj",(jones.l_name + jj.l_name)

  end

  def test_get_dept_name
      create = Department.new(dept_name:"Texas Gold")
      assert_equal "Texas Gold", create.dept_name
  end

  def test_get_dept_salary
      create = Department.new(dept_name: "Texas Gold")
      jones = Employee.new(l_name: "jones", f_name: "lisa", email: "ljones4521yahoo.com", phone: "4102796970", salary: 50)
      neely = Employee.new(l_name: "neely", f_name: "lisa", email: "ljones4521yahoo.com", phone: "4102796970", salary: 50)
      jenny = Employee.new(l_name: "jenny", f_name: "Jen", email: "ljones4521yahoo.com", phone: "4102796970", salary: 50)

      assert_equal 150.00, jones.salary + neely.salary + jenny.salary
    end
end
