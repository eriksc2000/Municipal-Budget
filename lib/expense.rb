require './lib/department'
require './lib/budget_category'

class Expense 
  attr_reader  :department,
               :budget_category,
               :amount
               
  def initialize(d, bc, amount)
    @department = d
    @budget_category = bc
    @amount = amount.to_f
  end 


end
