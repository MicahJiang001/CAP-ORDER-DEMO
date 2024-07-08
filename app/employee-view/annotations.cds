using DemoService as service from '../../srv/DemoService';

annotate service.Employees with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'depart_ID',
                Value: depart_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'tasks',
                Value: tasks,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'depart_ID',
            Value: depart_ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'tasks',
            Value: tasks,
        },
    ],
);

annotate service.Employees with {
    depart @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Departs',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: depart_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'name',
            },
        ],
    }
};

annotate service.Employees with @(UI: {
    SelectionFields: [
        ID,
        name,
        depart_ID
    ],
    LineItem       : [
        {Value: ID},
        {Value: name},
        {Value: depart_ID},
    ]
});
