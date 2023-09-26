const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const Comment = new Schema(
  {
    PostId: {type:String, ref: "Post"},
    UserId: {type: String, required: true, ref: "User"},
    Content: {type: String, required: true, maxLength: 1000},
  },
  {
    timestamps: false,
  }
);

module.exports = mongoose.model("Comment", Comment);
