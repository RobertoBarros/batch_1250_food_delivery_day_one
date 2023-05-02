class Router

  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch_action(action)
    end
  end

  private

  def print_actions
    # system('clear')
    puts '-' * 50
    puts "1. List meals"
    puts "2. Create meal"
    puts '-' * 50
    puts "3. List customers"
    puts "4. Create customer"
    puts '-' * 50
    puts "Enter your option:"
  end

  def dispatch_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    end
  end

end
