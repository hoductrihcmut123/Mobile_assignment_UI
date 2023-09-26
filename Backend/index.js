const express = require("express");
const session = require("express-session");
const http = require("http");
const app = express();
const port = 4000;
const db = require("./config/db");
const server = http.createServer(app);
const route = require("./routes/index");
const methodOverride = require("method-override");
const cors = require("cors");

app.use(
  session({
    secret: "somethingsecret",
    resave: true,
    saveUninitialized: false,
  })
);

app.use(methodOverride("_method"));
app.use(
  express.urlencoded({
    extended: true,
  })
);

app.use(express.json());
app.use(cors());

route(app);
db.connect();

server.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
