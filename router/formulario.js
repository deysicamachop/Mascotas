const { Router } = require ("express");
const nodemailer = require("nodemailer");
const formulario = new Router();

formulario.get('/formulario', (req,res) => {
    res.render('formulario')
})

formulario.post('/enviar_formulario', (req,res) => {
    const nombre = req.body.nombre;
    const apellido = req.body.apellido;
    const email = req.body.email;
    const edad = req.body.edad;
    const ubicacion = req.body.ubicacion;
    const comentario = req.body.comentario;
    
    const transporter = nodemailer.createTransport({
        host: process.env.SMTP_HOST,
        port: process.env.SMTP_PORT,
        secure: false,
        auth: {
            user: process.env.SMTP_USER,
            pass:process.env.SMTP_PASS,
        }
        });

let formularioOptions = {
    to: "petfinder@gmail.com",
    from: "Remitente",
    subject: "Formulario de contacto Pet Finder",
    html: `<h1> Mensaje de ${nombre} ${apellido} para nosotros: ${comentario} Contacto: ${email} Ubicacion:${ubicacion} Edad:${edad}  </h1>`,
}; 

transporter.sendMail(formularioOptions, (error, info) => {
    if (error) {
        res.status(500).send(error.message);
    } else {
        res.render('enviado');
        res.status(200).jsonp(reqbody);
    }
});
});

module.exports = formulario;