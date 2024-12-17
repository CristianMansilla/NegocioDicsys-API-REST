import express from 'express';
// import config from './config.js';
import categorias from './modulos/categorias/ruta.js';

import productos from './modulos/productos/ruta.js'

import cors from 'cors';

const app = express();

app.use(cors({
    origin: 'http://localhost:4200'
    // origin: 'http://localhost:8100'
}));

//Parsear a JSON
app.use(express.json());

// app.set('port', config.port);
app.set('port', 5000);

app.use('/api/categorias', categorias);

app.use('/api/productos', productos);


export default app;