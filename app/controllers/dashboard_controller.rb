class DashboardController < ApplicationController
  protect_from_forgery except: :connectVanilla
    def connectVanilla
        client_id = VanillaClientId
        secret = VanillaClientSecret
        signedIn = current_user.present? 
        user = {}
        if signedIn
          # CHANGE THESE FOUR LINES.
          user["uniqueid"] = current_user.id.to_s
          user["name"] = current_user.username.gsub(".","_")
          user["email"] = current_user.email
          user["photourl"] = ""
        end
        secure = true # this should be true unless you are testing.
        json = JsConnect.getJsConnectString(user, self.params, client_id, secret, secure)
        render :js => json
  end

  def forums
      redirect_to "https://localhost/forum/entry/jsconnect?client_id=#{VanillaClientId}&Target=%2Fdiscussions"
  end
end