module.exports = (app) ->
    fib = (n) -> 
        if n <= 1 
            1 
        else 
            (fib n - 1) + (fib n - 2)

    app.get '/fib/:value', (req, res) ->
        res.send fib req.params.value

    fib_async = (n, callback) ->
        if n < 0
            callback "Invalid Index #{n}"
        else if n <= 1
            callback null, 1
        else 
            fib_async n - 1, (err, n1) ->
                if err?
                    callback err
                else
                    fib_async n - 2, (err, n2) ->
                        if err?
                            callback err
                        else
                            callback null, n1 + n2

    app.get '/fib_async/:value', (req, res) ->
        fib_async req.params.value, (err, val) ->
            if err?
                res.send err, 400
            else
                res.send "#{val}"

    app.get '/fib_async/:value', (req, res) ->
        fib_async req.params.value, (err, val) ->
            if err?
                res.send err, 400
            else
                res.send "#{val}"