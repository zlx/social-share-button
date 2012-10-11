# coding: utf-8
module SocialShareButton
  module Helper
    def social_share_button_tag(opts = {})
      rel = opts[:rel]
      html = []
      html << "<div class='social-share-button' data-title='#{opts[:title]}' data-url='#{opts[:url]}' style='#{opts[:html][:style]}'>"

      sort_sites(opts[:locale]).each do |name|
        link_title = t("social_share_button.share_to") + " " + t("social_share_button.#{name.downcase}")
        html << link_to("","#", :rel => "nofollow #{rel}",
                        "data-site" => name,
                        :class => "social-share-button-#{name}",
                        :onclick => "return SocialShareButton.share(this);",
                        :title => h(link_title))
      end
      html << "</div>"
      raw html.join("\n")
    end

    def sort_sites(locale = :en)
      sites = SocialShareButton.config.allow_sites.clone
      case locale
      when :cn
        weibo = sites.delete("weibo")
        sites.unshift(weibo)
      when :ru
        vk = sites.delete("vk")
        sites.unshift(vk)
      end
      sites
    end
  end
end
