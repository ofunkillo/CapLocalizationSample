
module.exports = cds.service.impl(async function businessPartnerService() {
    /**
  * External entities read for masterData service
  */
  this.on('READ', 'Divisions', async (req) => {
    
    // Instance the external service
    const md = await cds.connect.to('MasterData');
    // Execute the query
    return md.run(req.query);
  });
});