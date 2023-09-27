class CalculatorController < ApplicationController
  def square
    @the_num = params.fetch("users_number")
  
    @the_result = @the_num.to_f ** 2
    
    render({:template => "page_templates/square_result"})
  end

  def square_root

    @the_num = params.fetch("user_number")
    @the_result = @the_num.to_f ** 0.5
    
    render({:template => "page_templates/square_root_result"})
  end

  def payment
    @apr = params.fetch("user_apr")

    @years = params.fetch("user_years")
  
    @pv = params.fetch("user_pv")
  
    monthly_interest_rate = @apr.to_f/12/100
    n = @years.to_f * 12
  
    monthly_payment = (monthly_interest_rate * @pv.to_f) / (1 - (1 + monthly_interest_rate)**-n)
  
    @the_result = monthly_payment.to_fs(:currency)

    render({:template => "page_templates/payment_result"})
  end

  def random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f

    random_num = rand(@min...@max)

    @result = random_num

    render({:template => "page_templates/random_result"})
  end
end
