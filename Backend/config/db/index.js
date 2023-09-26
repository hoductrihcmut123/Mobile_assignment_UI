const mongoose = require("mongoose");
const url = "mongodb+srv://HoangNguyen:Hoang17092001@cluster0.hqsb8.mongodb.net/UBT";
async function connect() {
  try {
    await mongoose.connect(url, {
      useNewUrlParser: true, 
      useUnifiedTopology: true,
    });
    console.log("Database Connected");
  } catch (error) {
    console.log("Can't connect to database: " + error.message);
  }
}

module.exports = { connect };
