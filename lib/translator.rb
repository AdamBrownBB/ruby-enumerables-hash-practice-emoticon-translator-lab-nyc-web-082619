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
    hash["get_meaning"][emoticons[1]] = meaning
    hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  hash 
end 


def get_japanese_emoticon(file_path = "./lib/emoticons.yml", eng_emoticon)
  new_hash = load_library(file_path)
      if new_hash["get_emoticon"].include?(eng_emoticon)
        new_hash["get_emoticon"][eng_emoticon]

      end  
end

def get_english_meaning
  # code goes here
end