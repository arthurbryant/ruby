
user_ids.each do |id|
  enquetes.each do |e|
    if (e.answers.blank? || e.answers.find_by_user_id(id).nil?)
      delete_ids << id
      Rails.logger.info "========= User with ID: #{id} was removed as no answer found for enquete with ID: #{e.id}"
    end
  end
end
