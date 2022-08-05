module Users
  class Valid
    att_reader :token, :user

    delegate :sessions, to: :user

    def initialize(token, user)
      @token = token
      @user = user
    end

    # This is just a simulated session method
    def call
      session = sessions.find_by(token: token)

      if session.nil?
        return "not_found"
      else
        if session.status == false
          return "late"
        elsif (session.last_used_at + Session::SESSION_TIMEOUT) >= Time.now
          session.used!
          return "valid"
        else
          session.block!
          return "late"
        end
      end
    end
  end
end