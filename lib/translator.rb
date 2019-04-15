
require 'yaml'

# require modules here

def load_library(yaml_file)
response = {"get_meaning" => {}, "get_emoticon" => {}}
translation = YAML.load_file(yaml_file)
translation.each do |names, emotes|
  response["get_meaning"][emotes[1]] = names
  response["get_emoticon"][emotes[0]] = emotes[1]
  end  # code goes here
  response
end


def get_japanese_emoticon
  # code goes here

end


def get_english_meaning
  # code goes here

end
