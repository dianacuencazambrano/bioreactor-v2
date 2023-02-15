const db = require("../config/database.js");
  
// Get All Clients from DB
const getContracts = (result) => {
    db.query("SELECT * FROM clientes_contratos", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getContractsByDates = (data, result) => {
    let datos = data.split(',');
    //console.log('SELECT * FROM clientes_contratos WHERE (fecha_con BETWEEN "' + datos[0] + '" AND "' + datos[1] +'")');
    db.query('SELECT * FROM clientes_contratos WHERE (fecha_con BETWEEN "' + datos[0] + '" AND "' + datos[1] +'")', (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


module.exports = 
{
    getContracts,
    getContractsByDates
};