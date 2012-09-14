module.exports = (app) ->
    
    store_help_request = -> 

    app.post '/request_help', (req, res) ->
        request = { team, location, technology, whats_up } = req.body

        store_help_request request

        res.render 'help_request', { request }
