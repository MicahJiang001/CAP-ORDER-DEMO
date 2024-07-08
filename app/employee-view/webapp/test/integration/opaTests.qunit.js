sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'employeeview/test/integration/FirstJourney',
		'employeeview/test/integration/pages/EmployeesList',
		'employeeview/test/integration/pages/EmployeesObjectPage',
		'employeeview/test/integration/pages/Employees_textsObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeesList, EmployeesObjectPage, Employees_textsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('employeeview') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeesList: EmployeesList,
					onTheEmployeesObjectPage: EmployeesObjectPage,
					onTheEmployees_textsObjectPage: Employees_textsObjectPage
                }
            },
            opaJourney.run
        );
    }
);