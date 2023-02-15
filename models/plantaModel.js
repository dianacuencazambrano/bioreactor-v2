const db = require("../config/database.js");
  
// Get All Clients from DB
const getPlantas = (result) => {
    db.query("SELECT * FROM plantas", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

module.exports = getPlantas;