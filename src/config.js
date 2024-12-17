import { config } from "dotenv";

config();

/* const app = {
    port: process.env.PORT || 3000,
}

export default app; */

import {createPool} from 'mysql2/promise';

const pool = createPool({
    host: process.env.LOCALHOST,
    port: process.env.PORT,
    user: process.env.USER,
    database: process.env.DATABASE,

});

export default pool;

