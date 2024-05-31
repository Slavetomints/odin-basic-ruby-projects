def substrings (dictionary, *strings)
  found_substrings = Hash.new(0)

  
  strings.each do |string|
    string.split.each do |word|
      if dictionary.include?(word)
        found_substrings[word] += 1
      end
    end
  end
  p found_substrings
end

def add_substrings (dictionary, *strings)
  strings.each do |string|
    dictionary << string.split
    dictionary
  end
end

dictionary = [
  "the", "be", "to", "of", "and", "a", "in", "that", "have", "I",
  "it", "for", "not", "on", "with", "he", "as", "you", "do", "at",
  "this", "but", "his", "by", "from", "they", "we", "say", "her", "she",
  "or", "an", "will", "my", "one", "all", "would", "there", "their", "what",
  "so", "up", "out", "if", "about", "who", "get", "which", "go", "me",
  "when", "make", "can", "like", "time", "no", "just", "him", "know", "take",
  "people", "into", "year", "your", "good", "some", "could", "them", "see", "other",
  "than", "then", "now", "look", "only", "come", "its", "over", "think", "also",
  "back", "after", "use", "two", "how", "our", "work", "first", "well", "way",
  "even", "new", "want", "because", "any", "these", "give", "day", "most", "us"]

substrings(dictionary, "hello world", "I love python not ruby", "hows the weather doing up there?", "the the the the the go go me me be to look look its first first these first well way")
