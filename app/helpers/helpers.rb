class Helpers
  def self.current_user(session_hash)
    id = session_hash[:user_id]
    User.find(id)
  end

  def self.is_logged_in?(session_hash)
    !!session_hash[:user_id]
  end
end
