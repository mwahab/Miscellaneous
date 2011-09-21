def palindrome_at_index(index, string)
    longest = [index, index]
    for lower, upper in [[index-1, index+1], [index, index+1]]
        while lower >= 0 and upper < string.size and string[upper] == string[lower]
            lower, upper = lower - 1, upper + 1
        end
        longest = [longest, [lower+1,upper-1]].max_by {|x| x[1] - x[0]}
    end
    return string[longest[0], longest[1]-longest[0]+1]
end

def max_palindrome(string)
    ((0..string.size-1).map { |index| palindrome_at_index(index, string) }).max_by { |p| p.size }
end
