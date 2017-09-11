require 'open-uri'
require 'JSON'
# require 'rubypress'


def scrape_instagram(user_id)
  begin
    instagram_source = open("https://www.instagram.com/explore/tags/#{user_id}").read
    content = JSON.parse(instagram_source.split("window._sharedData = ")[1].split(";</script>")[0])
    puts post1 = content['entry_data']['TagPage'][0]['tag']['media']['nodes'][0]['thumbnail_src']
    # puts post2 =content['entry_data']['TagPage'][0]['tag']['media']['nodes'][1]['thumbnail_src']
    # puts post3 = content['entry_data']['TagPage'][0]['tag']['media']['nodes'][2]['thumbnail_src']
    # puts post4 = content['entry_data']['TagPage'][0]['tag']['media']['nodes'][3]['thumbnail_src']
    # puts post5 = content['entry_data']['TagPage'][0]['tag']['media']['nodes'][4]['thumbnail_src']
    #  return content['entry_data']['TagPage'][0]['tag']['nodes'][1]['thumbnail_src']
    return post1


      # wp = Rubypress::Client.new(
      #     host: 'http://wocker.dev',
      #     username: 'admin',
      #     password: 'admin'
      # )
      # title = "タイトル"
      # content = post1
      # wp.newPost(
      #     blog_id: 1, #通常は1でOK
      #     content:{
      #         post_status: 'publish', #公開:publish　下書き:draft
      #         post_date: Time.now - 32400,
      #         post_content: content,
      #         post_title: title,
      #         terms: {
      #             category: cat,
      #             post_tag: tag,
      #         }
      #     }
      # )

  rescue Exception => e
    return nil
  end
end



scrape_instagram("food")



puts "a"

