module MicropostsHelper
  def carrier_for_item_image(micropost)
    if micropost.item_image?
      image_tag(micropost.item_image_url.to_s, alt: micropost.item_name, class: "carrier_for_item_image")
    else
      image_tag('no_item_image.jpg', alt: micropost.item_name, class: "carrier_for_item_image")
    end
  end
end