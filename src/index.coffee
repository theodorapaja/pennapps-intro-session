express = require 'express'
assets = require 'connect-assets'
_ = require 'underscore'

app = express()

# Add Connect Assets
app.use assets()

# Set the public folder as static assets
app.use express.static(process.cwd() + '/public')

# Set View Engine
app.set 'view engine', 'jade'

# Get root_path return index view
app.get '/hello', (req, res) -> 
    res.send 'Hello Node'

app.get '/hello/:name', (req, res) -> 
    res.send "Hello #{req.params.name}"

(require './more_examples') app

#  resp.render 'index'
# Define Port

# Start Server
port = process.env.PORT or process.env.VMC_APP_PORT or 3000
app.listen port, -> console.log "Listening on #{port}\nPress CTRL-C to stop server."