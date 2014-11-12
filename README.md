# anti-spam

This gem implements a simple anti-spam on Rails projects based on [David Walsh's solution](http://davidwalsh.name/wordpress-comment-spam). Basically, it stops spam comming from bots that doesn't execute JavaScript (most of them), or only execute the page load JavaScript.

First, include this gem on your Gemfile:

    gem 'anti_spam'

Add it to your javascript file, usually application.js

    //= require anti-spam

Then add the protect\_from\_spam filter on the desired actions

    before_action :protect_from_spam, only: [:create, :update]

That's it! Be aware that users without JavaScript will be considered bots, but nowadays that's very rare, chances are that it's really a bot.