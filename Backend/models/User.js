const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const User = new Schema(
  {
    Id: {type:String},
    Name: {type:String},
    AccountName: {type:String},
    Email: {type:String},
    Password: {type:String},
    Avatar: {type:String},
    Transactions: {type:String},
    Post: {type:String},
    Money: {type:Number},
    Feedback: {type:String},
    Reaction: {type:Number}
  },
  {
    timestamps: false,
  }
);

module.exports = mongoose.model("User", User);
