require 'pry-byebug'
require 'date'
require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/multiply/:x/:y' do
  @result = params[:x].to_i * params[:y].to_i
  erb :result # render the layout file or a file called result.erb
end

# create a homepage

get '/' do
  erb :home
end

get '/about_us' do
  erb :about_us
end

get '/faqs' do
  erb :faqs
end

get '/calculate' do
  @first_number = params[:first_number].to_f
  @second_number = params[:second_number].to_f
  @operator = params[:operator]
  @result = case @operator
  when "*"
    @first_number * @second_number
  when "/"
    @first_number / @second_number
  when "+"
    @first_number + @second_number
  when "-"
    @first_number - @second_number
  end
  erb :result
end

get '/circle_area' do
  @radius = params[:radius].to_f
  @result = 3.14 * (@radius **2)
  erb :result
end

get '/root' do
  @root_num = params[:root_num].to_f
  @result = Math.sqrt(@root_num)
  erb :result
end


# VOLUME CALCULATION FUNCTIONS   ---------------------------------------------------

get '/cube_volume' do 
  @length = params[:length].to_f
  @width = params[:width].to_f
  @height = params[:height].to_f
  @result = @length * @width * @height
  erb :result
end


get '/sphere_volume'do
@radius = params[:radius].to_f
@result = (4/3)*Math::PI*(@radius**3)
erb :result
end

get '/energy' do
@mass = params[:mass].to_f
energy = @mass * (300**2)
@result = "#{energy} MJoules"
erb :result

  end


# TODO - DISTANCE FUNCTIONS -------------------------------------------------------------

# def miles_to_km (miles)
#   km = miles / 0.62137 
# end

# def km_to_miles (kilometres)
#   miles = kilometres * 0.62137
# end

# def inches_to_cm (inches)
#   cm = inches * 2.54
# end

# def cm_to_inches (cm)
#   inches = cm / 2.54
# end

# def feet_to_metres (feet)
#   metres = feet * 0.3048
# end

# def metres_to_feet (metres)
#   feet = metres / 0.3048
# end

 
# WEIGHT FUNCTIONS    -----------------------------------------------------------------

# def pounds_to_kg (pounds)
#   kg = pounds * 0.45359265
# end

# def kg_to_pounds (kg)
#   pounds = kg / 0.45359265
# end

# def grams_to_ounces (grams)
#   ounces = grams / 28.349
# end

# def ounces_to_grams (ounces)
#   grams = ounces * 28.349
# end














