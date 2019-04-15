
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


def get_japanese_emoticon(yaml_file, emoticon)
  library = load_library(yaml_file)
  library["get_emoticon"].each do |english, japanese|
    if emoticon == english
      library["get_emoticon"] = japanese
    else
      "Sorry, that emoticon was not found"
    end
  end
  # code goes here

end


def get_english_meaning
  # code goes here

end
