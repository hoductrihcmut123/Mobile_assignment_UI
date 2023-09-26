const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const Topic = new Schema(
  {
    Name: { type: String, default: "Tất cả"},
  },
  {
    timestamps: false,
  }
);

module.exports = mongoose.model("Topic", Topic);
