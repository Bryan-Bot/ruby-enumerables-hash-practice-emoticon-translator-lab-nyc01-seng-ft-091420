# require modules here
require "yaml"
require 'pry'


def load_library(file)
  # code goes here
  far = YMAL.load_file('emoticons.yml')
  far.each_with_object({}) do |(key, value), new_hash|
    new_hash[key] = {:english => value[0], :japanese => value[1]}
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
