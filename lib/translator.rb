# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  emo_library = YAML.load_file(file_path)
  hash = {
    "get_emoticon" => {}, 
    "get_meaning" => {}
  }
 
emo_library.each do |meaning, emoticons|

 hash["get_meaning"][emoticons] = meaning

  hash["get_emoticon"][meaning] = emoticons

 end

end 

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end