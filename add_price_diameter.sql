-- =============================================
-- GOLDEN EYE BITUNG - ADD PRICE & DIAMETER
-- Jalankan SQL ini di Supabase SQL Editor
-- =============================================

-- 1. Tambah kolom price dan diameter
ALTER TABLE products ADD COLUMN IF NOT EXISTS price INTEGER DEFAULT 0;
ALTER TABLE products ADD COLUMN IF NOT EXISTS diameter TEXT DEFAULT '-';

-- 2. Update diameter berdasarkan nama produk (tidak duplikat)
-- Roman Candles
UPDATE products SET diameter = '-' WHERE name LIKE '%Roman Candles 5 Shots%';
UPDATE products SET diameter = '-' WHERE name LIKE '%Roman Candle 8 Shots (GE-8080D)%';
UPDATE products SET diameter = '1.2"' WHERE name LIKE '%Roman Candle 1.2"%';
UPDATE products SET diameter = '1.5"' WHERE name LIKE '%Roman Candle 1.5"%';
UPDATE products SET diameter = '1.9"' WHERE name LIKE '%Roman Candle 1.9"%';

-- Cakes 0.6"
UPDATE products SET diameter = '0.6"' WHERE name LIKE '%0.6"%';

-- Cakes 0.8"
UPDATE products SET diameter = '0.8"' WHERE name LIKE '%0.8"%' AND diameter = '-';

-- Cakes 1.0" / 1"
UPDATE products SET diameter = '1.0"' WHERE name LIKE '%1.0"%';
UPDATE products SET diameter = '1"' WHERE name LIKE '% 1" %' OR name LIKE '%1" (%';

-- Cakes 1.2"
UPDATE products SET diameter = '1.2"' WHERE name LIKE '%1.2"%' AND diameter = '-';

-- Mix diameter
UPDATE products SET diameter = 'Mix' WHERE name LIKE '%mix%' OR name LIKE '%Mix%';

-- Cakes tanpa diameter spesifik
UPDATE products SET diameter = '-' WHERE name LIKE '%Sunset%' OR name LIKE '%Samurai%';

-- Artillery
UPDATE products SET diameter = '1.75"' WHERE name LIKE '%1.75"%';
UPDATE products SET diameter = '-' WHERE name LIKE '%Elang Mas%';

-- =============================================
-- SELESAI! Kolom price dan diameter sudah ditambahkan
-- Harga bisa diisi manual via halaman admin
-- =============================================
