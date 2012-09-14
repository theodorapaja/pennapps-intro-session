module.exports = (app) ->
    app.get '/help_me', (req, res) ->
      res.render 'index'
