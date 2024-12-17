import express from 'express';
import pool from '../../config.js';

const router = express.Router();


// Listar productos
router.get('/', async (req, res) => {
    try {
        const [result] = await pool.query('SELECT * FROM productos');
        res.send(result);
    } catch (error) {
        console.log('Error al listar los productos:', error);
        res.status(400).send('Error al listar productos');
    }
});

//Listar productos por categoría
router.get('/categorias/:idCategoria', async (req, res)=>{
    try {
        const idCategoria = req.params.idCategoria;

        const query = 'SELECT * FROM productos WHERE categoria = ?';

        const [result] = await pool.query(query, [idCategoria]);

        res.send(result);
    } catch (error) {
        console.log('Error al listar los productos por categorias:', error);
        res.status(400).send('Error al listar productos por categorias');
    }
});

//Crear producto - Si ya existe la categoría que no la cree devuelta(agregar)
router.post('/', async (req, res) => {
    try {
        const { nombre, fecha_vencimiento, categoria, precio, stock } = req.body;
        const [result] = await pool.query('INSERT INTO productos (nombre, fecha_vencimiento, categoria, precio, stock) VALUES (?, ?, ?, ?, ?)', [nombre, fecha_vencimiento, categoria, precio, stock]);
        res.json({
            data: { id: result.insertId, nombre, fecha_vencimiento, categoria, precio, stock }
        })
    } catch (error) {
        res.status(500).send('Error al crear el producto');
    }
});

//Actualizar producto - Si ya existe el nombre no debería permitir actualizar
router.patch('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const { nombre, fecha_vencimiento, categoria, precio, stock } = req.body;
        const [result] = await pool.query('UPDATE productos SET nombre = ?, fecha_vencimiento = ?, categoria = ?, precio = ?, stock = ? WHERE id = ?', [nombre, fecha_vencimiento, categoria, precio, stock, id]);
        res.json({
            message: 'Producto actualizado con éxito',
            data: { id, nombre, fecha_vencimiento, categoria, precio, stock }
        });
    } catch (error) {
        res.status(500).send('Error al actualizar el producto');
    }
});


//Eliminar producto
router.delete('/:id', async (req, res) => {
    const { id } = req.params;

    try {
        const [result] = await pool.query('DELETE FROM productos WHERE id = ?', [id]);

        if (result.affectedRows === 0) {
            return res.status(404).json({ mensaje: "Producto no encontrado" });
        }

        res.json({
            mensaje: "Producto eliminado con éxito",
            id: id
        });
    } catch (error) {
        console.log(`Error: ${error}`);
        res.status(500).json({ mensaje: "Error al eliminar el producto" });
    }
});


export default router;