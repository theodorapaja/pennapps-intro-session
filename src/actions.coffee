module.exports = (app) ->
    app.post '/request_help', (req, res) ->
        values = { team, location, technology, whats_up} = req.body
        res.render 'help_request', values
