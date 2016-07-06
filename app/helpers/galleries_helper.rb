module GalleriesHelper

  def get_tags
    client = Instagram.client(:access_token => session[:access_token])
    html = "<div class='row'><p class='transparent-light text-center'>Add a photo to your instagram with #nightowlnashville and see it here!</p></div></div></div>"
    tags = client.tag_search('nightowlnashville')

    client.inspect
    for media_item in client.tag_recent_media(tags[0].name, count:50)
      html << "<div class='col-sm-4 col-xs-6'><a href='#{media_item.link}'><img class='col-xs-12 img img-responsive' src='#{media_item.images.standard_resolution.url}'></a><a class='hidden-xs' href='https://www.instagram.com/#{media_item.user.username}' target='none'><div class='transparent-dark text-center'> photo by: " + media_item.user.username + "</div></a></div>"
    end
    html << "<div class='lg-spacer'></div>"
  end
end
