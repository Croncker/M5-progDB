-- Voeg enkele gebruikersprofielen toe
INSERT INTO Gebruikersprofielen (Gebruikersnaam, Voornaam, Achternaam, E-mailadres, Wachtwoord, Geboortedatum, Profielfoto, Accountcreatie_datum, Laatste_inlogdatum)
VALUES
    ('gebruiker1', 'John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '1990-05-15', 'john_doe.jpg', '2023-01-10 09:15:00', '2023-10-01 18:30:00'),
    ('gebruiker2', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', '1985-08-21', 'jane_smith.jpg', '2023-02-20 11:30:00', '2023-09-25 20:45:00');

-- Voeg enkele spellen toe
INSERT INTO Spellen (Titel, Beschrijving, Uitgever, Releasedatum, Genre, Prijs, Platform, Gemiddelde_beoordeling, Aantal_downloads)
VALUES
    ('Fortnite', 'Een populaire battle royale game.', 'Epic Games', '2017-07-25', 'Actie', 0, 'PC', 4.5, 10000000),
    ('Minecraft', 'Een sandbox game met blokkenbouw.', 'Mojang Studios', '2011-11-18', 'Avontuur', 29.99, 'PC', 4.8, 50000000),
    ('FIFA 23', 'Een voetbalvideospel.', 'EA Sports', '2022-09-30', 'Sport', 59.99, 'PlayStation 5', 4.2, 2000000);

-- Voeg enkele transacties toe
INSERT INTO Transacties (Gebruikersnaam, Spel_ID, Aankoopdatum, Transactiebedrag, Betalingsmethode, Status)
VALUES
    ('gebruiker1', 1, '2023-09-01 14:45:00', 0, 'Gratis', 'Voltooid'),
    ('gebruiker2', 2, '2023-09-05 16:30:00', 29.99, 'Creditcard', 'Voltooid'),
    ('gebruiker1', 3, '2023-09-10 20:15:00', 59.99, 'PayPal', 'In behandeling');
