#!/usr/bin/ruby

@temp_arr = [1, 2]
@arr = [12, 'b', @temp_arr]
p @arr
@arr[0, 2] =  []
p @arr

PREFECTURES = %w(
                  hokkaido aomori akita iwate yamagata miyagi fukushima niigata toyama ishikawa ibaraki chiba tochigi gunma
                  saitama tokyo kanagawa yamanashi shizuoka nagano gifu aichi mie shiga fukui kyoto nara osaka wakayama hyogo
                  tottori okayama shimane hiroshima yamaguchi kagawa ehime tokushima kochi fukuoka oita saga nagasaki kumamoto
                  miyazaki kagoshima okinawa
                ).freeze

PREFECTURES.each_with_index do |item, index|
  printf("%2d: %s\n", index, item)
end
