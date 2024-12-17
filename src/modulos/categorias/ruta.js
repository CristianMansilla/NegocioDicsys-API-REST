import expres from 'express';
import pool from '../../config.js';

const router = expres.Router();

//Listar categorías
router.get('/', async (req, res) => {
    try {
        const [result] = await pool.query('SELECT * FROM categorias');
        res.send(result);
    } catch (error) {
        console.log(`Error al listar las categorías: ${error}`);
        res.status(404).send("Error al listar las categorías");
    }
});

//Crear categorías - Si ya existe la categoría que no la cree devuelta(agregar)
router.post('/', async (req, res) => {
    try {
        const {nombre} = req.body;
        const [result] = await pool.query('INSERT INTO categorias (nombre) VALUES (?)', [nombre]);
        res.json({
            data: {id: result.insertId, nombre}
        })
    } catch (error) {
        res.status(500).send('Error al crear la categoría');
    }
});

//Actualizar categoría
router.patch('/:id', async (req, res) => {
    try {
        const {id} = req.params;
        const {nombre} = req.body;
        const [result] = await pool.query('UPDATE categorias SET nombre = ? WHERE id = ?', [nombre, id]);
        res.json({
            message: 'Categoría actualizada con éxito',
            data: {id, nombre}
        });
    } catch (error) {
        res.status(500).send('Error al actualizar la categoría');
    }
});


//Eliminar categorías
router.delete('/:id', async (req, res) => {
    try {
        const {id} = req.params;
        await pool.query('DELETE FROM categorias WHERE id=?', [id]);
        res.json({
            message: 'Categoria eliminada con éxito',
            data: {id}
        })
    } catch (error) {
        res.status(500).send('Error al eliminar la categoría');
    }
});

export default router;