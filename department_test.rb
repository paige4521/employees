require 'minitest/autorun'
require_relative 'department.rb'
#require_relative 'employee.rb'

class DepartmentTest < Minitest::Test

  def employees
    ::Department.new
  end

  def test_add_employee_to_department

       create = Department.new("Testing if Dept shows")
       create.add_employee(Employee.new(name: "jones", email_add: "ljones4521yahoo.com", h_phone: "4102796970", salary: 10))

       assert_equal 1, create.employees.length
  end



  def test_no_employee

      create =  Department.new("Testing if Dept shows")
      assert_equal 0, create.employees.length
  end

  def test_get_all_dept_employees

    create = Department.new(dept_name:"Testing if Dept shows")
    jones = Employee.new(name: "jones", email_add: "ljones4521yahoo.com", h_phone: "4102796970", salary: 10)
    jj = Employee.new(name: "jj", email_add: "ljones4521@gmail.com", h_phone: "4102796970", salary: 10)
    assert_equal "jonesjj",(jones.name + jj.name)

  end

  def test_get_dept_name

      create = Department.new("Texas Gold")
      assert_equal "Texas Gold", create.dept_name
  end

  def jones
    @jones = @jones ||= ::Employee.new(name: "jones", name: "lisa", email_add: "ljones4521yahoo.com", h_phone: "4102796970", salary: 100)
  end

  def
    @neely ||= Employee.new(name: "neely", name: "lisa", email_add: "ljones4521yahoo.com", h_phone: "4102796970", salary: 50)
  end

  def jenny ||= Employee.new(name: "jenny", name: "Jen", email_add: "ljones4521yahoo.com", h_phone: "4102796970", salary: 100)

  def test_total_salaries

      jones
      neely
      jenny
      create = Department.new("Texas Gold", [jones, neely, jenny])
      assert_equal 250.00, create.total_salaries
    end

  def test_employee_raise
    jones1 = Employee.new(name: "jones", name: "lisa", email_add: "ljones4521yahoo.com", h_phone: "4102796970", salary: 100)
    neely1 = Employee.new(name: "neely", name: "lisa", email_add: "ljones4521yahoo.com", h_phone: "4102796970", salary: 50)
    jenny1 = Employee.new(name: "jenny", name: "Jen", email_add: "ljones4521yahoo.com", h_phone: "4102796970", salary: 100)
    jones1.set_performance(performance: true)
    neely1.set_performance(performance: false)
    jenny1.set_performance(performance: true)
    create1 = Department.new("Texas Gold", [jones1, neely1, jenny1])
    create1.employee_raise(percentage: 10.0)
    assert_equal 270.00, create1.total_salaries
  end

  def set performance

end
