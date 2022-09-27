dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_stringmer(str)
  sub_str_arr = []
  i = str.length
    until i <= 0 do
      sub_str_arr.append(str.downcase[0..i-1])
      i -= 1
      if str.length > 0 && i == 0
        str.slice!(0)
        i = str.length
      end
    end
    sub_str_arr
end

def substrings(str, collection)
  sub_stringmer(str).select{|subs|collection.include?(subs)}
  .reduce(Hash.new(0)) do |tally, item|
    tally[item] += 1
    tally
  end
end


substrings("Howdy partner, sit down! How's it going?", dictionary)