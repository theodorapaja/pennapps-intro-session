$ ->
    app.add_module 'requests', (bar) ->
        request_list = $ '.help-requests .requests'
        insert_request_snippet = (snippet) ->
            request_list.prepend snippet


        add_request = (data) ->
            $.ajax
                type: 'POST'
                data: data
                url: '/request_help'
                success: insert_request_snippet
                error: ->
                    $('.alert').show()

        { add_request }


    app.add_module 'request_help', (bar) ->
        form = $ '.request-help'
        form.on 'submit', ->
            values = {} 
            for field in ['team', 'location', 'technology', 'whats-up']
                values[field.replace /-/, '_'] = (form.find "##{field}").val()

            app.requests.add_request values
            false

