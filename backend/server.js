
const express = require('express');
const { Pool } = require('pg');
const cors = require('cors');
const app = express();
app.use(cors());

const pool = new Pool({
  user: 'seck',
  host: 'db',
  database: 'campagne_db',
  password: '3004',
  port: 5432,
});

app.get('/api/campagnes', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM campagnes');
    res.json(result.rows);
  } catch (err) {
    console.error('Erreur :', err);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

app.listen(3000, () => {
  console.log('Backend en écoute sur http://localhost:3000');
});
