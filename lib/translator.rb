# require modules here
require "yaml"
require 'pry'
def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
    emoticons.each_with_object({}) do |(key, value), hash|
      hash[key] = {english: value[0], japanese: value[1]}
    end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
