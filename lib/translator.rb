require 'yaml'

def load_library(path)
  emoticons = YAML.load_file(path)
  output = {:get_meaning => {}, :get_emoticon => {}}
  emoticons.map{|k,v| output[:get_meaning][v[1]] = k}
  emoticons.map{|k,v| output[:get_emoticon][v[0]] = v[1]}
  output
  
end

def get_japanese_emoticon(path, emoticon)
  if load_library(path)[:get_emoticon][emoticon]
    load_library(path)[:get_emoticon][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  # code goes here
end

def get_english_meaning
  # code goes here
end