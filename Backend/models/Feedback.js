// create model

const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const Feedback = new Schema(
  {
    FeedBackId: { type: String, required: true},
    UserId: {type: String, required: true, ref: "User"},
    Star: {type: Number, default: 0},
    Content: {type:String},
    Date: {type: Date, default: Date.now},
  },
  {
    timestamps: false,
  }
);

module.exports = mongoose.model("Feedback", Feedback);
