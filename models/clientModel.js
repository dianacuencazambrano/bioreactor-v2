const db = require("../config/database.js");
  
// Get All Clients from DB
const getClients = (result) => {
    db.query("SELECT * FROM clientes", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

module.exports = getClients;