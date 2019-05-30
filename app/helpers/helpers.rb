class Helpers

  def self.current_user(session_hash)
    user = User.find(session_hash[:user_id])
    user
  end

  def self.is_logged_in?(session_hash)
    !!session_hash[:user_id]
    #this is basically asking, is there a session hash with a user_id, i.e is someone logged in
  end

end
