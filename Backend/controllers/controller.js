const User = require('../models/User');

class AppController {
    getData(req, res, next){
        User.find({}, function(err, users){
            if(err){
                res.send(err);
            }
            res.json(users);
        });
    }
}


module.exports = new AppController();