require 'yaml'

def load_library(path)
  emoticons = YAML.load_file(path)
  output = {get_meaning: {}, get_emoticon: {}}
  emoticons.map{|k,v| output[get_meaning][v[1]] = k}
  output
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end