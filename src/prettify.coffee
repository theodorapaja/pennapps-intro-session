module.exports = (app) ->
    { all_help_requests } = require './persist'
    app.get '/', (req, res) ->
        all_help_requests (err, help_requests) ->
            if err?
                res.send 500, err
            else
                res.render 'index', { help_requests }
