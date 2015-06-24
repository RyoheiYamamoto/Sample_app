module MicropostsHelper
  def carrier_for_item_image(micropost)
    if micropost.item_image?
      image_tag(micropost.item_image_url(:thumb_large).to_s, alt: micropost.item_name, class: "carrier_for_item_image")
    else
      image_tag('no_image.png', alt: micropost.item_name, class: "carrier_for_item_image")
    end
  end
end