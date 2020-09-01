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
  far = YAML.load_file(path)
  far.each do |key, value|
    if emoticon == value[1]
      value[0]
    end
    if emoticon !== value[1]
      "sorry"
    end
  end
end

def get_english_meaning
  # code goes here
end
