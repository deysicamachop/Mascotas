//VARIABLES DE ENTORNO
require('dotenv').config();

const express = require('express');
const app = express();
const hbs = require('hbs');

const port = process.env.PORT;

//HANDLEBARS
app.set('view engine' , 'hbs'); 
hbs.registerPartials( __dirname + '/views/partials');

// --- middleware ---
app.use(express.static('public'));

app.use(express.urlencoded({extended: false}));

app.use(require('./router/router')); //carpeta donde estan las rutas

app.use(require('./router/formulario'));
app.listen(port, ()=>{
    console.log('Usando el puerto http://localhost:${port}');
})