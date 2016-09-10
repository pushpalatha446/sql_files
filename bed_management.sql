
insert into location_tag ( name, description, creator, date_created, uuid )
values ( 'Admission Location', 'When a user is selecting a ward to admit a patient, they may choose one with this tag', '1', now(), uuid() );

insert into bed_type (bed_type_id, name, display_name, description) values(101, "General Bed", "General Bed", "This is the general bed type");
insert into bed_type (bed_type_id, name, display_name, description) values(102, "ICU Bed", "ICU Bed", "This is the icu bed type");

insert into location ( name, description, creator, date_created, uuid )
values ( 'ICU','This is an Intensive Care Unit for patients that are in critical condition.','1', now(), uuid() );
insert into location_tag_map ( location_id, location_tag_id )
values ((select location_id from location where name = 'ICU'), (select location_tag_id from location_tag where name = 'Admission Location'));
insert into location ( name, description, creator, date_created, uuid, parent_location)
values ( 'Physical Space for ICU','Physical space','1',now(), uuid(),
(SELECT location_id FROM location where name = 'ICU')
);

insert into location_tag_map ( location_id, location_tag_id )
values ((select location_id from location where name = 'Physical Space for ICU'), (select location_tag_id from location_tag where name = 'Admission Location'));

insert into bed (bed_number, bed_type_id, date_created, uuid) values ('ICU1', 102, now(), uuid());
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('ICU2', 102, now(), uuid());
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('ICU3', 102, now(), uuid());

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for ICU'),'1','1',(select bed_id from bed where bed_number = 'ICU1'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for ICU'),'1','2',(select bed_id from bed where bed_number = 'ICU2'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for ICU'),'1','3',(select bed_id from bed where bed_number = 'ICU3'));



insert into location ( name, description, creator, date_created, uuid )
values ( 'General Ward','This is for the admitted patients that need special care.','1', now(), uuid() );

insert into location_tag_map ( location_id, location_tag_id )
values ((select location_id from location where name = 'General Ward'), (select location_tag_id from location_tag where name = 'Admission Location'));

insert into location ( name, description, creator, date_created, uuid, parent_location)
values ( 'Physical Space for General Ward','Physical space','1',now(), uuid(),
(SELECT location_id FROM location where name = 'General Ward')
);

insert into location_tag_map ( location_id, location_tag_id )
values ((select location_id from location where name = 'Physical Space for General Ward'), (select location_tag_id from location_tag where name = 'Admission Location'));


insert into bed (bed_number, bed_type_id) values ('GM 1', 101);
insert into bed (bed_number, bed_type_id) values ('GM 2', 101);
insert into bed (bed_number, bed_type_id) values ('GM 3', 101);
insert into bed (bed_number, bed_type_id) values ('GM 4', 101);
insert into bed (bed_number, bed_type_id) values ('GM 5', 101);
insert into bed (bed_number, bed_type_id) values ('GM 6', 101);
insert into bed (bed_number, bed_type_id) values ('GM 7', 101);
insert into bed (bed_number, bed_type_id) values ('GM 8', 101);
insert into bed (bed_number, bed_type_id) values ('GM 9', 101);
insert into bed (bed_number, bed_type_id) values ('GM 10', 101);


insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'1','1',(select bed_id from bed where bed_number = 'GM 1'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'1','2',(select bed_id from bed where bed_number = 'GM 2'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'1','3',(select bed_id from bed where bed_number = 'GM 3'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'1','4',(select bed_id from bed where bed_number = 'GM 4'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'2','1',(select bed_id from bed where bed_number = 'GM 5'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'2','2',(select bed_id from bed where bed_number = 'GM 6'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'2','3',(select bed_id from bed where bed_number = 'GM 7'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'2','4',(select bed_id from bed where bed_number = 'GM 8'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'3','1',(select bed_id from bed where bed_number = 'GM 9'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id)
values ((select location_id from location where name = 'Physical Space for General Ward'),'3','2',(select bed_id from bed where bed_number = 'GM 10'));