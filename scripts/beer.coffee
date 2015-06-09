# Description:
#   Tells you what beers are on tap and where
#
# Commands:
#   List beers at a bar:
#     bell what's on tap at *bar*?
#   List bars that have a beer on tap:
#     bell where is *beer* on tap?

module.exports = (robot) ->
  beer_bot = 'https://beermebot.herokuapp.com'

  robot.respond /what['’]?s on tap at ([^\?]*)\??/i, (msg) ->
    search_for(msg, 'bars')

  robot.respond /where is (.*) on tap\??/i, (msg) ->
    search_for(msg, 'beers')

  search_for = (msg, type) ->
    search_term = msg.match[1]
    msg.http("#{beer_bot}/#{type}?text=#{encodeURIComponent(search_term)}").get() (error, response, body) ->
      if error
        msg.reply "The beer bot isn't speaking to me at the moment"
      else if body
        msg.reply "The beer bot found the following #{type} for '#{search_term}':\n" + body
      else
        msg.reply "The beer bot didn't find any #{type} for '#{search_term}'"
