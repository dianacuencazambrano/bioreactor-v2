const express = require('express')
const getClientsDB = require("../controllers/Client.js");
const {
    getContractsDB, 
    filterContractsByDate 
} = require("../controllers/Contract.js");
  
const router = express.Router();
  
// Get All CLients from DB
router.get('/clients', getClientsDB);

// Get All CLients from DB
router.get('/contracts', getContractsDB);

// Get filtered results from Contracts
router.post('/filter/:data', filterContractsByDate);

//export default router;
module.exports = router;