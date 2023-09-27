class InputController < ApplicationController
  def square
    render({:template => "page_templates/square_calc"})
  end

  def square_root
    render({:template => "page_templates/square_root_calc"})
  end 

  def payment
    render({:template => "page_templates/payment_calc"})
  end

  def random
    render({:template => "page_templates/random_calc"})
  end

end
