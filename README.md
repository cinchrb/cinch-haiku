# Haiku plugin

Fetches a random haiku from dailyhaiku.org and displays it.

## Installation
First install the gem by running:

```
[sudo] gem install cinch-haiku
```

Then load it in your bot:

```ruby
require "cinch"
require "cinch/plugins/haiku"

bot = Cinch::Bot.new do
  configure do |c|
    # add all required options here
    c.plugins.plugins = [Cinch::Plugins::Haiku]
  end
end

bot.start
```
## Commands

```
haiku
```

## Options
### :delay
Add a delay of N seconds between each line of the haiku.
