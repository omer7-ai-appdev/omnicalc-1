class ApplicationController < ActionController::Base
  def blank_square_form

    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    @num = params.fetch("number").to_f
    @square_of_num = @num **2

  render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def square_root_form

    render({ :template => "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_root
    @num = params.fetch("user_root").to_f
    @root_of_num = Math.sqrt(@num) 

    render({ :template => "calculation_templates/square_root_results.html.erb"})
  end

  def random_form
    render ({ :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random
    @minimum = params.fetch("num_min").to_f
    @maximum = params.fetch("num_max").to_f
    @diet_coke = rand(@minimum..@maximum)
    
    render ({ :template => "calculation_templates/random_form_results.html.erb"})
  end
end
