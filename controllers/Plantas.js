const getPlantas = require("../models/plantaModel.js");
  
// Get All Clients from DB
const getPlantasDB = (req, res) => {
    getPlantas((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

module.exports = getPlantasDB;