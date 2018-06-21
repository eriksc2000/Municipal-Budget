require 'minitest/autorun'
require 'minitest/pride'
require './lib/municipalbudget'

class MunicipalbudgetTest < Minitest::Test 
  
  def test_it_exists
    municipal_budget = MunicipalBudget.new 
    
    assert_instance_of MunicipalBudget, municipal_budget
  end
  
  def test_it_returns_empty_array_to_start
    municipal_budget = MunicipalBudget.new
    
    assert_equal [], municipal_budget.expenses 
  end

end
