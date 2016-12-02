require 'yaml'

# first define a method to save object to yaml.

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

# then define a method to load yaml string.

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

# assign variable test_Array to an array of strings

test_array = ["Slick shoes",
              "Bully Blinders",
              "Pinchers of Peril"]

# assign variable filename to the filename (duh!)

filename = "DatasGadgets.txt"

# call the yaml_save method passing filename parameter

yaml_save test_array, filename

# assign result of calling yaml_load method to the variable read_array

read_array = yaml_load filename

# test to show that read_array is same as original array.

puts(read_array == test_array)
