var mysql     = require('mysql');
var express   = require('express');
var app       = express();

var connection = mysql.createConnection({
  host     : 'db',
  user     : 'root',
  password : 'yoursolution',
  database : ''
});
 
connection.connect();
 
connection.query('show databases', function (error, results, fields) {
  if (error) 
  	console.log(error);
  console.log('The solution is: ', results);
});

app.use(express.static('public'));
app.set('view engine', 'ejs');
app.set('views','./views');

app.get('/', function(req, res){
  res.render('index');
})

app.listen(process.env.PORT_WEB, function(){
  console.log("PORT: ", process.env.PORT_WEB);
});