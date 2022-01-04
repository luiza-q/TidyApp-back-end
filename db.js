const Pool = require("pg").Pool;
const secrets= require("./db_settings.json")
// require("dotenv").config();


// const devConfig = { 
//     user: process.env.PG_USER,
//     database: process.env.PG_DATABASE,
//     password: process.env.PG_PASSWORD,
//     host: process.env.PG_HOST,
//     port: process.env.PG_PORT
// };

// const proConfig = {
//     connectionString: process.env.DATABASE_URL
// }

// const pool = new Pool(
//     process.env.NODE_ENV === "production" ? proConfig : devConfig
// );
const connection = new Pool(secrets);

module.export = connection;
