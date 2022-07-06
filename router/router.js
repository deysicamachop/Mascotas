//EN ESTE ARCHIVO VAN TODAS LAS RUTAS QUE USO//

const { Router } = require ("express");
const router = new Router();

/* const mysql = require('mysql');

// hago la conexion con mi bs (esto luego lo llevo a otro archivo)

const conexion = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'pet_finder'
})

conexion.connect((err) => {
    if(err) throw err;
    console.log("CONEXION ESTABLECIDA");
}) */


//ACA ME MUESTRA TODAS LAS MASCOTAS DISPONIBLES PARA ADOPTAR
router.get('/mascotas', (req,res) => { 
    let sql = "SELECT * FROM mascotas";
    let query = conexion.query(sql, (err, results)=> {
        if (err) throw err;
        res.render('mascotas', {
            results: results
        }) 
    
    })    
})

//ACA MUESTRA SOLO PERROS
router.get('/perros', (req,res) => { 
    let sql = "SELECT * FROM mascotas WHERE tipo_mascota = 'perro'";
    let query = conexion.query(sql, (err, results)=> {
        if (err) throw err;
        res.render('perros', {
            results: results
        }) 
    
    })    
})

//ACA MUESTRA SOLO GATOS
router.get('/gatos', (req,res) => { 
    let sql = "SELECT * FROM mascotas WHERE tipo_mascota = 'gato'";
    let query = conexion.query(sql, (err, results)=> {
        if (err) throw err;
        res.render('gatos', {
            results: results
        }) 
    
    })    
})


// ACA ME MUESTRA TODOS LOS REFUGIOS
router.get('/detalles', (req,res) => { 
    let sql = "SELECT * FROM refugios";
    let query = conexion.query(sql, (err, results)=> {
        if (err) throw err;
        res.render('detalles', {
            results: results
        }) 
    
    })    
})

// MIS RUTAS

router.get('/', (req,res) => { 
    res.render('inicio')
}) 
 

router.get('/inicio', (req,res) => {
    res.render('inicio')
})

router.get('/adoptar', (req,res) => {
    res.render('adoptar')
})

router.get('/nosotros', (req,res) => {
    res.render('nosotros')
})

router.get('/formulario', (req,res) => {
    res.render('formulario')
})

router.get("*", (req,res) => {
    res.render('error')
})

module.exports = router; //no olvidar exportar el modulo y en index.js decirle en que carpeta estan las rutas