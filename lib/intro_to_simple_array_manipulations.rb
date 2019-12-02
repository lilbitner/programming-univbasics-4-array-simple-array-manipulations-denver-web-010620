def using_push(array, string)
  colors_in_the_rainbow = ["red", "orange", "yellow", "green", "blue", "indigo"]
  colors_in_the_rainbow.push("violet")
end 

def using_unshift(array, string)
  bouroughs_in_nyc = ["Brooklyn", "Queens", "Manhattan", "Bronx"]
  bouroughs_in_nyc.unshift("Staten Island") = @new_neighborhood
end 
  
def using_pop(array)
  @continents = ["Africa", "Asia", "Europe", "North America", "South America", "Oceania", "Antarctica"]
  @continents.pop = deleted.string 
end

def pop_with_args(array)
  @dog_breeds = ["Great Dane", "Golden Retriever", "Chihuahua", "Shiba Inu"]
  @dog_breeds.pop[2,3] = @small_dogs 
end
  
def using_shift(array)
  @my_favorite_cities = ["Lagos", "Cape Town", "Nairobi", "San Francisco", "Gaborone", "New York", "Berlin", "London"]
  @my_favorite_cities.shift = @im_so_over_this_city 
end

def shift_with_args(array)
  @ice_cream_brands = ["Blue Bell Creameries", "Ben & Jerry's", "Baskin Robbins", "Braum's", "Breyer's"]
  @ice_cream_brands.shift[0,1] = @brands_removed
end

def using_concat(array1, array2)
  @my_favorite_things = ["raindrops on roses", "whiskers on kittens"]
  more_favs = ["sports cars", "flatiron school"]
  @all_my_favs = concat(@my_favorite_things, more_faves)
end

def using_insert(array, element) 
  @list_of_programming_languages = ["Ruby", "JavaScript", "Java", "C#", "Objective C", "C++", "PHP"]
  @new_array = @list_of_programming_languages.insert[4]

describe "using_insert" do 
  before(:each) do 
    @list_of_programming_languages = ["Ruby", "JavaScript", "Java", "C#", "Objective C", "C++", "PHP"]
    @another_language = "Python"
    @new_array = using_insert(@list_of_programming_languages, @another_language)
  end

  it "takes in two arguments, an array and a new element to be added to the array. it uses the insert method to add the new element to the 4th index of the array" do 
    expect(@new_array[4]).to eq(@another_language)
  end

  it "increases the length of the array" do 
    expect(@new_array.length).to eq(8)
  end
end

describe "using_uniq" do 
  it "takes in an argument of an array and uses the uniq method to remove any duplicate items" do
    haircuts = ["Pixie", "Bob", "Mohawk", "Crew Cut", "Linka", "Wheeler", "Bob"]
    new_array = using_uniq(haircuts)
    expect(new_array).to eq(["Pixie", "Bob", "Mohawk", "Crew Cut", "Linka", "Wheeler"])
  end
end

describe "using_flatten" do 
  it "takes in an argument of an array that contains other arrays and uses the flatten method to return an array of strings" do 
     instruments = ["Saxophone", ["Piano", "Trumpet"], "Violin", "Drums", "Flute"]
     flat_array = using_flatten(instruments)
     expect(flat_array).to eq(["Saxophone", "Piano", "Trumpet", "Violin", "Drums", "Flute"])
  end
end


describe "using_delete" do 
  it "takes in two arguments, an array and a string, and uses the delete method to remove any items from the array that are equal to that string" do
    instructors = ["Josh", "Steven", "Sophie", "Steven", "Amanda", "Steven"]
    no_offense_steven = using_delete(instructors, "Steven")
    expect(instructors).not_to include("Steven")
  end
end

describe "using_delete_at" do 
  it "takes in two arguments, an array and an integer and deletes the element at the index of the array that is equal to that integer" do 
    famous_robots = ["Johnny 5", "R2D2", "Robocop"]
    deleted_robot = using_delete_at(famous_robots, 2)
    expect(deleted_robot).to eq("Robocop")
  end
end