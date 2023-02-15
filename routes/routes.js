const express = require('express')
const getplantasDB = require("../controllers/Plantas.js");
  
const router = express.Router();
  
// Get All Plantas Registers from DB
router.get('/plantas', getplantasDB);


//export default router;
module.exports = router;