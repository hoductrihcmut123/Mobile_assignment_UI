
const AppController = require("../controllers/controller");
function route(app){
  app.get("/",AppController.getData);
}
module.exports = route;