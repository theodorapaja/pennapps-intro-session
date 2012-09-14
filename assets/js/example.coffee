$ ->
    app.add_module 'example', ->
        square = (x) -> x * x
        { square }

    app.add_module 'other', ->
        alert app.example.square 5
