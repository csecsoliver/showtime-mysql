-- Insert dummy users (parents and organizers)
INSERT INTO users (email, passhash, urole) VALUES
('kovacs.janos@pelda.hu', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5GyYdKWvhqS3W', 20),
('nagy.katalin@pelda.hu', '$2b$12$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36ZQHXZdcRJhZfVZhPGvNBa', 20),
('toth.eszter@szulo.hu', '$2b$12$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 10),
('szabo.peter@szulo.hu', '$2b$12$K8TdN.7r8FtCGLfqLBJ4eu1qH3kVxvwQAaYqBhXcnJ5GZpL0JZ.K6', 10),
('horvath.anna@szulo.hu', '$2b$12$3PZ9FXdvZj4G7WXNC.7xNOZ1tLqJ8pF4KxqHjWqFqR3FNrVn5XJCi', 10),
('varga.laszlo@szulo.hu', '$2b$12$9U5q7K3mL8PqNrO5TvWxSuY8ZqKvJwXtCqH4LnRmPqJxTqKvNmOqR', 10),
('kiss.maria@szulo.hu', '$2b$12$7H2K9JqLmNpOrQsT6UvWxY9ZpJvKwXsCpG3LnRmPqIxTpKvMnOpR', 10),
('molnar.gabor@szulo.hu', '$2b$12$5G1J8IpKlMoNqPrQ4TuVwX8YoIuJvWrBoF2KmQlOoHwSoJuLmNoP', 10),
('nemeth.eva@szulo.hu', '$2b$12$4F0I7HoJkLnMpOqP3StUvW7XnHtIuVqAnE1JlPlNnGvRnItKlMnO', 10),
('farkas.zoltan@szulo.hu', '$2b$12$3E9H6GnIjKmLoNpO2RsStV6WmGsHtUpZmD0IkOkMmFuQmHsJkLmN', 10),
('balogh.judit@szulo.hu', '$2b$12$2D8G5FmHiJlKnMoN1QrRsU5VlFrGsHoUpYmC9HjOjLlEuPlGsHjKlM', 10),
('papp.istvan@szulo.hu', '$2b$12$1C7F4ElGhIkJmLnM0PqQrT4UkEqFrGoTnXlB8GiNiKkDtOkFrGiJkL', 10);

-- Insert dummy workshops (children's workshops at schools)
INSERT INTO workshops (user_id, created_at, wdate, wlocation, max_participants, sponsor, visibility, extra_text, extra_text_visibility) VALUES
(1, 1704067200, 1737878400, 'Petőfi Sándor Általános Iskola, 12-es terem', 25, 'Petőfi Iskola Szülői Munkaközösség', 1, 'A bejárat melleti csengőt kell megnyomni', 1),
(2, 1704153600, 1738483200, 'Arany János Gimnázium, Díszterem', 40, 'Városi Művészeti Alapítvány', 1, '', 0),
(1, 1704240000, 1739088000, 'Kossuth Lajos Iskola, Tornaterem', 30, 'Kossuth Iskolai Alapítvány', 1, '', 0),
(2, 1704326400, 1739692800, 'Vörösmarty Mihály Általános, Kémia labor', 20, 'STEM Oktatási Alap', 1, '', 0),
(1, 1704412800, 1740297600, 'Kodály Zoltán Zeneiskola, Zeneterem', 18, 'Kodály Zeneiskola', 1, 'A hátsó bejáratnál lehet bemenni', 1),
(2, 1704499200, 1740902400, 'Móra Ferenc Általános Iskola, Rajzterem', 22, 'Helyi Művészek Egyesülete', 1, '', 0),
(1, 1704585600, 1741507200, 'Apáczai Csere János Gimnázium, Informatika terem', 25, 'Digitális Oktatási Kezdeményezés', 1, '', 0),
(2, 1704672000, 1742112000, 'Radnóti Miklós Iskola, Könyvtár', 30, 'Városi Könyvtár Hálózat', 1, '', 0),
(1, 1704758400, 1742716800, 'Jókai Mór Általános Iskola, Étterem', 35, 'Egészséges Táplálkozás Program', 1, '', 1),
(2, 1704844800, 1743321600, 'Eötvös József Általános, Játszótér', 40, 'Ifjúsági Sport Liga', 1, '', 0);

-- Insert dummy files
INSERT INTO files (workshop_id, fpath) VALUES
(1, '/uploads/workshops/1/szuloi_hozzajarulas_2026_01_15.pdf'),
(2, '/uploads/workshops/2/szuloi_hozzajarulas_2026_01_22.pdf'),
(3, '/uploads/workshops/3/szuloi_hozzajarulas_2026_02_01.pdf'),
(4, '/uploads/workshops/4/szuloi_hozzajarulas_2026_02_08.pdf'),
(5, '/uploads/workshops/5/szuloi_hozzajarulas_2026_02_15.pdf'),
(6, '/uploads/workshops/6/szuloi_hozzajarulas_2026_02_22.pdf'),
(7, '/uploads/workshops/7/szuloi_hozzajarulas_2026_03_01.pdf'),
(8, '/uploads/workshops/8/szuloi_hozzajarulas_2026_03_08.pdf'),
(9, '/uploads/workshops/9/szuloi_hozzajarulas_2026_03_15.pdf'),
(10, '/uploads/workshops/10/szuloi_hozzajarulas_2026_03_22.pdf');

-- Insert dummy participations (parents registering their children)
INSERT INTO participations (workshop_id, user_id, approved, pname, notes) VALUES
(1, 3, 1, 'Tóth Emma', ''),
(1, 4, 1, 'Szabó Levente', ''),
(1, 5, 1, 'Horváth Olivia', ''),
(1, 6, 1, 'Varga Noel', ''),
(2, 7, 1, 'Kiss Zsófia', ''),
(2, 8, 1, 'Molnár Marcell', ''),
(2, 9, 1, 'Németh Luca', ''),
(2, 10, 1, 'Farkas Dávid', ''),
(3, 3, 1, 'Tóth Mira', 'Asztma - inhalátor szükséges'),
(3, 4, 1, 'Szabó Dominik', ''),
(3, 11, 1, 'Balogh Izabella', ''),
(4, 5, 1, 'Horváth Máté', ''),
(4, 6, 1, 'Varga Hanna', 'Diétás mogyoró allergia'),
(4, 7, 1, 'Kiss Olivér', ''),
(4, 12, 0, 'Papp Amália', ''),
(5, 8, 1, 'Molnár Jakab', ''),
(5, 9, 1, 'Németh Boglárka', ''),
(5, 10, 1, 'Farkas Benjámin', ''),
(6, 3, 1, 'Tóth Abigél', ''),
(6, 11, 1, 'Balogh Henrik', ''),
(7, 4, 1, 'Szabó Emília', ''),
(7, 5, 1, 'Horváth Sándor', ''),
(7, 6, 1, 'Varga Zoé', 'Glutén allergia'),
(8, 7, 1, 'Kiss Mihály', ''),
(8, 8, 1, 'Molnár Ella', ''),
(8, 12, 1, 'Papp Dániel', ''),
(9, 9, 1, 'Németh Áron', ''),
(9, 10, 1, 'Farkas Gréta', ''),
(9, 3, 1, 'Tóth Samu', ''),
(10, 4, 1, 'Szabó Klára', ''),
(10, 11, 1, 'Balogh Mátyás', 'Laktóz intolerancia'),
(10, 12, 1, 'Papp Lili', '');


-- Insert dummy invites
INSERT INTO invites (workshop_id, code, uses_left) VALUES
(1, 'ART001', 5),
(2, 'DRM002', 8),
(3, 'SPT003', 10),
(4, 'SCI004', 3),
(5, 'MUS005', 7),
(6, 'ART006', 6),
(7, 'COD007', 5),
(8, 'WRT008', 9),
(9, 'CKN009', 4),
(10, 'SPT010', 12);

-- Insert dummy claimed invites
INSERT INTO claimed_invites (workshop_id, user_id, invite_id) VALUES
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(2, 7, 2),
(2, 8, 2),
(2, 9, 2),
(3, 3, 3),
(3, 4, 3),
(4, 5, 4),
(4, 6, 4),
(4, 7, 4),
(5, 8, 5),
(5, 9, 5),
(6, 3, 6),
(6, 11, 6),
(7, 4, 7),
(7, 5, 7),
(8, 7, 8),
(8, 8, 8),
(9, 9, 9),
(9, 10, 9),
(10, 4, 10),
(10, 11, 10),
(10, 12, 10);
