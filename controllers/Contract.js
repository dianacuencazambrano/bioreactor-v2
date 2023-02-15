const {getContracts, getContractsByDates} = require("../models/contractModel.js");
  
// Get All Clients from DB
const getContractsDB = (req, res) => {
    getContracts((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const filterContractsByDate = (req, res) => {
    getContractsByDates(req.params.data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

module.exports = {
    getContractsDB,
    filterContractsByDate
};