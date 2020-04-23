var mysql = require("mysql");
var inquirer = require("inquirer");
require("console.table")
 
var connection = mysql.createConnection({
    host: "localhost",
    port:3306,
    user: "root",
    password: "password",
    database: "bamazon_db" 
});

connection.connect(function (err){
    if(err) throw err;
   display();
   selection();
});

function display(){
    var query = "SELECT ID,Name,Department,Price FROM products";
    connection.query(query, function(err, res) {
        if (err) throw err;
        
      
        console.table(res)
        
        })
      
    }

function selection(){
    inquirer
    .prompt({
        name:"selection",
        type: "input",
        message:"Enter the id of the item you would like to purchace"

    }).then(function(answer){
        var query = "SELECT Name,Department,Price FROM products WHERE ?";
        connection.query(query,{ID:parseFloat(answer.selection)}, function(err, res){
            if (err) throw err;
            
          
           console.table(res)
            
            });
           connection.end()
      

    });
}


