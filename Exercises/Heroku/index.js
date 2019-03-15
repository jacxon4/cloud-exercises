const express = require('express');
const PORT = process.env.PORT;

express()
.get("/",function(req,res){
    res.send("Hello world from heroku application ");
}).listen(PORT);

console.log("Running on port: "+PORT);