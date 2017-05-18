# coding: utf-8

WEEK_DAYS = {'月' => 'Monday', '火' => 'T', '水' => 'W','木' => 'T', '金' => 'Monday', '土' => 'Monday', '日' => 'Monday'}.freeze
WEEK_DAYS.each_with_index do |day, index|
  p day
  p index
end
