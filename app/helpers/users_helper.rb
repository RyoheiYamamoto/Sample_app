module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def carrier_for(user)
  	if user.image?
    	image_tag(user.image_url(:thumb_large).to_s, alt: user.name, class: "carrier")
    else
    	image_tag('no_image.png', alt: user.name, class: "carrier")
    end 
    		

  end
end