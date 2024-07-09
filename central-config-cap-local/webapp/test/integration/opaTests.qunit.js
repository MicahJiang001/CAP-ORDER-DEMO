sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'centralconfigcaplocal/test/integration/FirstJourney',
		'centralconfigcaplocal/test/integration/pages/AdapterTypesList',
		'centralconfigcaplocal/test/integration/pages/AdapterTypesObjectPage'
    ],
    function(JourneyRunner, opaJourney, AdapterTypesList, AdapterTypesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('centralconfigcaplocal') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAdapterTypesList: AdapterTypesList,
					onTheAdapterTypesObjectPage: AdapterTypesObjectPage
                }
            },
            opaJourney.run
        );
    }
);