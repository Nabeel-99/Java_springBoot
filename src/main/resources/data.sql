insert into country(id, version, created, updated, name, sign)
    values (1, 0, now(), now(), 'Hungary', 'HU');
insert into country(id, version, created, updated, name, sign)
    values (2, 0, now(), now(), 'USA', 'US');
insert into country(id, version, created, updated, name, sign)
    values (3, 0, now(), now(), 'Ukraine', 'UA');
insert into country(id, version, created, updated, name, sign)
    values (4, 0, now(), now(), 'Europe', 'EU');
insert into country(id, version, created, updated, name, sign)
    values (5, 0, now(), now(), 'Betelgeuse', 'BT');
commit ;

insert into person(id, version, created, updated, name, personal_id, country)
    values (1, 0, now(), now(), 'Zaphod Beeblebrox', '12345678901',
            (select id from country where sign ='BT'));

commit ;
