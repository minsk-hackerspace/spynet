CREATE TABLE devices (id integer primary key autoincrement, people_id integer, mac text, name text);
CREATE TABLE log (timestamp integer, connected_at integer, mac text, ip text, hostname text);
CREATE TABLE people (id integer primary key autoincrement, surname text, name text, nick text);

