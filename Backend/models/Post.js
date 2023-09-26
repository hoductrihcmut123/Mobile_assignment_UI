const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const Post = new Schema(
  {
    PostId: {type:String},
    UserId: {type: String, required: true, ref: "User"},
    Content: {type:String},
    Comments: [{ type: Schema.Types.ObjectId, ref: "Comment"}],
    Reaction: {type:Number},
    Date: {type: Date, default: Date.now},
  },
  {
    timestamps: false,
  }
);

module.exports = mongoose.model("Post", Post);
