require 'minitest/autorun'
require_relative 'employees'
# require_relative 'department.rb'

class EmployeeTest < Minitest::Test
  def employees
    ::Employee.new
  end

    def test_get_name

      create = Employee.new(name: "jones", name: "lisa", email: "ljones4521yahoo.com", phone: "4102796970", salary: 10)
      assert_equal "lisa jones", create.name
    end

  def test_get_salary
    create = Employee.new(l_name: "jones", f_name: "lisa", email: "ljones4521yahoo.com", phone: "4102796970", salary: 10)
    assert_equal "10", create.salary
  end

  def test_add_employee_review
    create = Employee.new(l_name: "jones", f_name: "lisa", email: "ljones4521yahoo.com", phone: "4102796970", salary: 10)
    assert_equal "Lisa is an employee of the company", create.employee_review("Lisa is an employee of the company")
  end

  def test_employee_pass_fail
    create = Employee.new(l_name: "jones", f_name: "lisa", email: "ljones4521yahoo.com", phone: "4102796970", salary: 10)
    assert_equal "Y", create.employee_pass_fail("Y")
  end

  def test_get_dept_salary
      create = Employee.new

end
