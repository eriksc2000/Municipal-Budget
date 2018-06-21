require 'minitest/autorun'
require 'minitest/pride'
require './lib/expense'
require './lib/budget_category'
require './lib/department'

class ExpenseTest < Minitest::Test 

  def test_it_exists 
    d = Department.new("Parks and Recreation")
    bc = BudgetCategory.new("Appliances")
    expense = Expense.new(d, bc, "656.50")
    
    assert_instance_of Expense, expense
  end 
  
  def test_it_has_a_department_category
    d = Department.new("Parks and Recreation")
    bc = BudgetCategory.new("Appliances")
    expense = Expense.new(d, bc, "656.50")
    
    assert_equal d, expense.department 
  end

  def test_it_has_a_budget_category
    d = Department.new("Parks and Recreation")
    bc = BudgetCategory.new("Appliances")
    expense = Expense.new(d, bc, "656.50")
    
    assert_equal bc, expense.budget_category
  end 
  
  def test_it_has_an_expense_category
    d = Department.new("Parks and Recreation")
    bc = BudgetCategory.new("Appliances")
    expense = Expense.new(d, bc, "656.50")
    
    assert_equal 656.50, expense.amount
  end 
    
end
