const express = require("express");
const mongoose = require("mongoose");
const adminRouter = require("./routes/admin");
const authRouter = require("./routes/auth");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

//INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://Shaikot:Shaikot@cluster0.vfbpjsa.mongodb.net/?retryWrites=true&w=majority";

//MIDDLEWARE
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

//CONNECTION
mongoose.connect(DB).then( () => {
        console.log("connection successful!");
    })
    .catch( (e => {
        console.log(e);
    }));

app.listen(PORT, "0.0.0.0", ()=>{
    console.log(`Connected at port : ${PORT}`);
});



