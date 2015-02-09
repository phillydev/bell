# Description:
#   Randomly tells you where to eat
#
# Commands:
#   hubot something* lunch something*

lunchSpots = [
  "Cafe Ole",
  "Lake Blue",
  "Corner Market",
  "Subway",
  "Sassafrass",
  "Han Dynasty",
  "European Republic",
  "Bourse Taco Place",
  "Soho Pizza",
  "Sonnys Steaks",
  "Old City Coffee",
  "El Fuego",
  "Salad Bar",
  "Karma Indian Buffet",
  "Chimichangas",
  "Nicks Roast Beef",
  "Fork Etc",
  "Cosi",
  "Reading Terminal",
  "Mexican Post",
  "Fire and Ice",
  "Stos",
  "Falafel cart on 4th and market",
  "Menagerie",
  "Square One",
  "Happily Ever After for some froyo, yo",
  "7-Eleven",
  "Lucha Cartel",
  "Nothing Nowhere, because you never listen to me anyway"
  ]

sayings = [
  "yearn for",
  "must have",
  "desire",
  "bid you to visit",
  "recently had a lovely meal at",
  "humbly recommend",
  "am craving",
  "think you will enjoy",
  "insist that you visit",
  "nod at"
  ]

module.exports = (robot) ->
  robot.respond /.* lunch.*/i, (msg) ->

    saying = msg.random sayings
    spot = msg.random lunchSpots

    msg.send "I " + saying + " " + spot + "."
