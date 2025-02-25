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


def get_japanese_emoticon(file_path, eng_emoticon)
  new_hash = load_library(file_path)
      if new_hash["get_emoticon"].include?(eng_emoticon)
        new_hash["get_emoticon"][eng_emoticon]
      else
        "Sorry, that emoticon was not found"
      end  
end

def get_english_meaning(file_path, jpn_emoticon)
    new_hash = load_library(file_path)
      if new_hash["get_meaning"].include?(jpn_emoticon)
        new_hash["get_meaning"][jpn_emoticon]
      else
        "Sorry, that emoticon was not found"
      end 
end


