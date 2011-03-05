-- GM command setstate 

DELETE FROM `command` WHERE name = 'gobject setstate';
INSERT INTO `command`
	(name, security, help)
VALUES
	('gobject setstate', '2', 'Syntax: .gobject setstate #guid #state');
