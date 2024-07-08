namespace my.demo;

using {managed} from '@sap/cds/common';

entity Employees {
    key ID     : Integer;
        name   : localized String;
        depart : Association to Departs;
        tasks  : Integer;
}

entity Departs {
    key ID        : Integer;
        name      : String;
        employees : Association to many Employees
                        on employees.depart = $self;
}

entity Orders : managed {
    key ID          : UUID;
        description : String;
        employee    : Association to Employees;
}
