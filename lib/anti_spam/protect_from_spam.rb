module AntiSpam
	module ProtectFromSpam
		def protect_from_spam
			if params[:antispam_token] != AntiSpam.token
				render text: "Spam not allowed, please enable your JavaScript", status: 403
			end
		end
	end
end

ActionController::Base.send :include, AntiSpam::ProtectFromSpam