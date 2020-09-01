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

def get_japanese_emoticon(path, emoticon)
  # code goes here
  file = load_library(path)
  response = "sorry we dont know"
  file.each do |key, value|
    if emoticon == file[key][:english]
      response = file[key][:japanese]
    end
  end
  response
end

def get_english_meaning(path, emoticon)
  # code goes here
  file = load_library(path)
  response = "sorry we dont know"
  file.each do |key, value|
    if emoticon == file[key][:japanese]
      response = file[key][:english]
    end
  end
  response
end
