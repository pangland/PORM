CREATE TABLE signaturetechniques (
  id INTEGER PRIMARY KEY,
  technique VARCHAR(255) NOT NULL,
  style_id INTEGER,

  FOREIGN KEY(style_id) REFERENCES style(id)
);

CREATE TABLE practitioners (
  id INTEGER PRIMARY KEY,
  fname VARCHAR(255) NOT NULL,
  lname VARCHAR(255) NOT NULL,
  style_id INTEGER,

  FOREIGN KEY(style_id) REFERENCES style(id)
);

CREATE TABLE styles (
  id INTEGER PRIMARY KEY,
  style VARCHAR(255) NOT NULL,
  founder_id INTEGER,

  FOREIGN KEY(founder_id) REFERENCES practitioner(id)
);

INSERT INTO
  styles (id, style, founder_id)
VALUES
  (1, "Brazilian Jiu Jitsu", 1),
  (2, "Jeet Kun Do", 1),
  (3, "Boxing", 1);

INSERT INTO
  practitioners (id, fname, lname, style_id)
VALUES
  (1, "Marcelo", "Garcia", 1),
  (2, "Demian", "Maia", 1),
  (3, "Bruce", "Lee", 2),
  (4, "'Sugar' Ray", "Robinson", 3);

INSERT INTO
  signaturetechniques (id, technique, style_id)
VALUES
  (1, "Arm drag", 1),
  (2, "Triangle choke", 1),
  (3, "Side kick to knee", 2),
  (4, "Swining nunchucks around while shouting like a mad man", 2),
  (5, "Left hook", 3);
