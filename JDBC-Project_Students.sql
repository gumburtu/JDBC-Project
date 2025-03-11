-- Öğrenciler tablosunu oluştur
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    address TEXT,
    grade INT CHECK (grade >= 0 AND grade <= 100)
);

-- Öğrencileri tabloya ekle
INSERT INTO students (first_name, last_name, age, email, address, grade)
VALUES
('Ahmet', 'Yılmaz', 20, 'ahmet.yilmaz@example.com', '1234 Elm St, Istanbul', 85),
('Ayşe', 'Kara', 22, 'ayse.kara@example.com', '5678 Oak St, Ankara', 90),
('Mehmet', 'Çelik', 21, 'mehmet.celik@example.com', '9101 Pine St, Izmir', 78),
('Fatma', 'Demir', 23, 'fatma.demir@example.com', '1112 Birch St, Bursa', 92),
('Ali', 'Öztürk', 19, 'ali.ozturk@example.com', '1314 Cedar St, Adana', 88),
('Zeynep', 'Şahin', 20, 'zeynep.sahin@example.com', '1516 Maple St, Antalya', 76),
('Hasan', 'Kılıç', 22, 'hasan.kilic@example.com', '1718 Walnut St, Konya', 81),
('Elif', 'Arslan', 21, 'elif.arslan@example.com', '1920 Ash St, Gaziantep', 89),
('Murat', 'Yıldız', 23, 'murat.yildiz@example.com', '2122 Poplar St, Diyarbakır', 95),
('Emine', 'Aydın', 19, 'emine.aydin@example.com', '2324 Fir St, Kayseri', 77),
('Kemal', 'Polat', 20, 'kemal.polat@example.com', '2526 Spruce St, Eskisehir', 82),
('Hülya', 'Kaya', 22, 'hulya.kaya@example.com', '2728 Redwood St, Mersin', 87),
('Serkan', 'Aksoy', 21, 'serkan.aksoy@example.com', '2930 Sycamore St, Trabzon', 80),
('Gül', 'Eren', 23, 'gul.eren@example.com', '3132 Willow St, Malatya', 94),
('Cem', 'Yalçın', 19, 'cem.yalcin@example.com', '3334 Alder St, Sivas', 75),
('Deniz', 'Koç', 20, 'deniz.koc@example.com', '3536 Beech St, Ordu', 84),
('Burcu', 'Güneş', 22, 'burcu.gunes@example.com', '3738 Hemlock St, Hatay', 91),
('Kadir', 'Ekinci', 21, 'kadir.ekinci@example.com', '3940 Hawthorn St, Van', 79),
('Sevgi', 'Pek', 23, 'sevgi.pek@example.com', '4142 Larch St, Erzurum', 93),
('Tuncay', 'Bozkurt', 19, 'tuncay.bozkurt@example.com', '4344 Pine St, Aydın', 86),
('Gamze', 'Özdemir', 20, 'gamze.ozdemir@example.com', '4546 Cedar St, Denizli', 83),
('Orhan', 'Tan', 22, 'orhan.tan@example.com', '4748 Elm St, Manisa', 78),
('Sinem', 'Gültekin', 21, 'sinem.gultekin@example.com', '4950 Oak St, Kütahya', 90),
('Engin', 'Şen', 23, 'engin.sen@example.com', '5152 Pine St, Kahramanmaraş', 88),
('Yasemin', 'Çetin', 19, 'yasemin.cetin@example.com', '5354 Birch St, Batman', 85),
('Okan', 'Bayraktar', 20, 'okan.bayraktar@example.com', '5556 Maple St, Uşak', 92),
('Cansu', 'Görkem', 22, 'cansu.gorkem@example.com', '5758 Walnut St, Edirne', 81),
('Harun', 'Dinç', 21, 'harun.dinc@example.com', '5960 Ash St, Elazığ', 84),
('Selin', 'Yavuz', 23, 'selin.yavuz@example.com', '6162 Poplar St, Kars', 79),
('Barış', 'Koşar', 19, 'baris.kosar@example.com', '6364 Fir St, Kırşehir', 87),
('Derya', 'Uysal', 20, 'derya.uysal@example.com', '6566 Spruce St, Nevşehir', 91),
('Tolga', 'Acar', 22, 'tolga.acar@example.com', '6768 Redwood St, Isparta', 93),
('Arzu', 'Özkan', 21, 'arzu.ozkan@example.com', '6970 Sycamore St, Çanakkale', 75),
('Metin', 'Ateş', 23, 'metin.ates@example.com', '7172 Alder St, Yalova', 95),
('Pelin', 'Kurt', 19, 'pelin.kurt@example.com', '7374 Beech St, Kırıkkale', 76),
('Berk', 'Durmaz', 20, 'berk.durmaz@example.com', '7576 Hemlock St, Bolu', 86),
('Şule', 'Tuna', 22, 'sule.tuna@example.com', '7778 Hawthorn St, Düzce', 80),
('Uğur', 'Yaman', 21, 'ugur.yaman@example.com', '7980 Larch St, Artvin', 88),
('Funda', 'Kara', 23, 'funda.kara@example.com', '8182 Pine St, Giresun', 94),
('Mert', 'Sarıkaya', 19, 'mert.sarikaya@example.com', '8384 Cedar St, Karabük', 75),
('Nazan', 'Yurt', 20, 'nazan.yurt@example.com', '8586 Elm St, Kilis', 89),
('Cenk', 'Er', 22, 'cenk.er@example.com', '8788 Oak St, Bartın', 83),
('Ayhan', 'Şenol', 21, 'ayhan.senol@example.com', '8990 Pine St, Ardahan', 77),
('Gizem', 'Çakır', 23, 'gizem.cakir@example.com', '9192 Birch St, Iğdır', 82),
('Bora', 'Çakmak', 19, 'bora.cakmak@example.com', '9394 Maple St, Yozgat', 91),
('Aslı', 'Eroğlu', 20, 'asli.eroglu@example.com', '9596 Walnut St, Osmaniye', 79),
('Ceyda', 'Turan', 22, 'ceyda.turan@example.com', '9798 Ash St, Çorum', 90),
('Efe', 'Şeker', 21, 'efe.seker@example.com', '9990 Poplar St, Aksaray', 85);

select * from students;

select grade from students;