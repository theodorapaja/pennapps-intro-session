

* Node v0.8.8
* Express v3.0.0rc2
* CoffeeScript! v1.3.3
* Jade v0.26.0
* Connect Assets v2.2.1

## Requirements

* [NodeJs](http://nodejs.org) (Tested with v0.8.8)
* [CoffeeScript](http://coffeescript.org)
* [Mocha](http://visionmedia.github.com/mocha/)

## Included Packages

Via npm: (`npm install`)
* [Express](http://expressjs.com)
* [Jade](http://jade-lang.com/)
* [connect-assets](http://github.com/TrevorBurnham/connect-assets)
* [Mocha](http://visionmedia.github.com/mocha/)
* [Should.Js](https://github.com/visionmedia/should.js/)

In your project directory.

---

## Install, Build, Run, Test, and Watch

```
# Install nodejs and npm

git clone http://github.com/twilson63/express-coffee.git [project-name]
cd [project-name]
npm install
```

## Install coffee-script, mocha and docco

``` sh
npm install coffee-script -g
npm install mocha -g
```

# Run

```
cake dev
```

### Mocha and Request for testing

[Mocha](http://visionmedia.github.com/mocha/) tests 
to run mocha

    cake test

### Setup to deploy to heroku

    heroku create
    git push heroku master
    heroku open


## Thanks to

* [Jeremy Ashkenas](https://github.com/jashkenas) for creating coffee-script
* [TJ Holowaychuk](https://github.com/visionmedia) for creating express
* [Miško Hevery](https://github.com/mhevery) for creating Jasmine-Node
* [TJ Holowaychuk](https://github.com/visionmedia) for creating mocha and should.js
* [express-coffee](https://github.com/twilson63/express-coffee) upon which this is loosly based.
