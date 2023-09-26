// create model

const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const Transaction = new Schema(
  {
    UserId: {type: String, required: true, ref: "User"},
    Amount: {type: String},
    Category: {type: String, ref: "Category"},
    Note: {type:String},
    Date: {type: Date, default: Date.now},
    isExcluded: {type: Boolean, default: false},
  },
  {
    timestamps: false,
  }
);

module.exports = mongoose.model("Transaction", Transaction);
