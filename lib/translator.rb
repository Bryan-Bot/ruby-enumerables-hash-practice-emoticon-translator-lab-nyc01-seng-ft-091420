# require modules here
require 'yaml'
require 'pry'


def load_library(path)
  # code goes here
  far = YAML.load_file(path)
  new_hash = {}
  far.each do |key, value|
    new_hash[key] = {:english => value[0], :japanese => value[1]}
  end
  new_hash
end

def get_japanese_emoticon(load_library, emoticon)
  # code goes here
  file = load_library(path)
  file.each do |key, value|
    if value.has_value?(emoticon)
      return value[:japanese]
    else
      return "sorry, your emoticon isnt here"
    end
  end
end

def get_english_meaning
  # code goes here
end
