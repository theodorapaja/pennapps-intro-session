// Generated by CoffeeScript 1.3.3

module.exports = function(app) {
  return app.get('/help_me', function(req, res) {
    return res.render('index');
  });
};