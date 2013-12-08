
 FEATURE_ENABLE = {
    # write :key => %w(user1 user2) and referer as current_user.feature_enable?(:key) on the views
    :comments_all_push => %w(kyoro kyoro25 tnj henteko),
  }

def feature_enable? (feature)
    return true if FEATURE_ENABLE[feature].nil?
    return FEATURE_ENABLE[feature].include?('kyoro')
end

puts feature_enable?(:distribution)
puts feature_enable?(:comments_all_push)
