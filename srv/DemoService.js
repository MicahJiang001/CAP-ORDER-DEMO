module.exports = (srv) => {

    const {Employees} = cds.entities ('my.demo');
  
    srv.before('CREATE', 'Orders', async (req) => {
        const order = req.data
        const tx = cds.transaction(req);
        
        const employee = await tx.run(SELECT.one.from(Employees).where({ID: order.employee_ID}));
        if(!employee) {
            return req.error (404, "Employee does not exist!");
        }
        if(employee.tasks > 2) {
            return req.error (404, "Employee is busy!");
        }
        await tx.run (
            UPDATE (Employees)
            .set   ({ tasks: {'+=': 1}})
            .where ({ ID: order.employee_ID})
        );
        return req.info(200, "success");
    });
}
