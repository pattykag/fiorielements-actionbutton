using MyService as service from '../../srv/service';

annotate service.Users with @odata.draft.enabled;

annotate service.Users with @UI:{
    LineItem  : [
        {Value: name}
    ],
    Facets                : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>facetsTitle}',
        Target: '@UI.FieldGroup#Main',
    }],
    FieldGroup #Main: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {Value: name},
        ],
    },
};
