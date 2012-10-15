window.SocialShareButton =
  openUrl : (url) ->
    window.open(url)
    false

  share : (el) ->
    site = $(el).data('site')
    title = encodeURIComponent($(el).parent().data('title'))
    url = encodeURIComponent($(el).parent().data('url'))
    img = encodeURIComponent($(el).parent().data('img'))
    description = encodeURIComponent($(el).parent().data('description'))
    switch site
      when "weibo"
        SocialShareButton.openUrl("http://v.t.sina.com.cn/share/share.php?url=#{url}&title=#{title}&content=utf-8")
      when "twitter"
        SocialShareButton.openUrl("https://twitter.com/home?status=#{title}: #{url}")
      when "facebook"
        SocialShareButton.openUrl("http://www.facebook.com/sharer.php?t=#{title}&u=#{url}")
      when "googleplus"
        SocialShareButton.openUrl("https://plus.google.com/share?url=#{url}&t=#{title}")
      when "pinterest"
        SocialShareButton.openUrl("http://pinterest.com/pin/create/button/?url=#{url}&description=#{title}media=#{img}")
      when "tumblr"
        SocialShareButton.openUrl("https://www.tumblr.com/login?s=&t=#{title}&u=#{url}&v=3")
      when "stumbleupon"
        SocialShareButton.openUrl("http://www.stumbleupon.com/submit?url=#{url}&title=#{title}")
      when "vk"
        SocialShareButton.openUrl("http://vk.com/share.php?url=#{url}&title=#{title}")
    false
