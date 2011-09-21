require '../max_palindrome'
require 'test/unit'

class MaxPalindromeTest < Test::Unit::TestCase
    def setup
    end

    def test_odd_length_palindrome
        str = "racecar"            
        res = max_palindrome(str)
        assert_equal("racecar", res)

        st = "abcabcracecarabcabc"
        res = max_palindrome(str)
        assert_equal("racecar", res)
    end

    def test_even_length_palindrome
        str = "raceecar"            
        res = max_palindrome(str)
        assert_equal("raceecar", res)
        
        str = "aaaaaraceecarpopopadf"
        res = max_palindrome(str)
        assert_equal("raceecar", res)
    end

    def test_no_palindrome
        str = "abcabcabc"
        res = max_palindrome(str)
        assert_equal("a", res)
    end
end
