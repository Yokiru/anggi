-- =============================================
-- GOLDEN EYE BITUNG - FULL DATABASE SETUP
-- Jalankan semua SQL ini di Supabase SQL Editor
-- =============================================

-- 1. Tambah kolom category (jika belum ada)
ALTER TABLE products ADD COLUMN IF NOT EXISTS category TEXT DEFAULT 'Cakes';

-- 2. Tambah kolom video_url (jika belum ada)
ALTER TABLE products ADD COLUMN IF NOT EXISTS video_url TEXT;

-- 3. Hapus data test lama
DELETE FROM products WHERE name LIKE 'Test%';

-- 4. Insert semua produk Golden Eye

-- ===== ROMAN CANDLE (5 produk) =====
INSERT INTO products (name, category, shoot, duration, image_url, featured) VALUES
('Roman Candles 5 Shots (GE.1005D)', 'Roman', 5, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Roman Candle 8 Shots (GE-8080D)', 'Roman', 8, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Roman Candle 1.2" 8 Shots (GE 1208E)', 'Roman', 8, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Roman Candle 1.5" 8 Shots (GE 1508D)', 'Roman', 8, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Roman Candle 1.9" 8 Shots (GE 1908A)', 'Roman', 8, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', true);

-- ===== CAKES (38 produk) =====
INSERT INTO products (name, category, shoot, duration, image_url, featured) VALUES
('Night Piace 0.8" (GE 1506)', 'Cakes', 25, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', false),
('Black Label 0.8" (GE 1507)', 'Cakes', 25, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', false),
('Lion King 0.8" (GE 1505)', 'Cakes', 25, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', true),
('Fantastic Cakes 0.8" 25 Shots (GE 92025)', 'Cakes', 25, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', false),
('Melody 0.8" (GE 0836)', 'Cakes', 36, '-', 'https://images.unsplash.com/photo-1533230408708-8f9f91d1235a?w=400', false),
('Crazy 0.8" (GE 0849A)', 'Cakes', 49, '-', 'https://images.unsplash.com/photo-1533230408708-8f9f91d1235a?w=400', false),
('X.O 0.8" (GE 0849B)', 'Cakes', 49, '-', 'https://images.unsplash.com/photo-1533230408708-8f9f91d1235a?w=400', false),
('Fantastic Cakes 0.8" 49 Shots (GE 92049)', 'Cakes', 49, '-', 'https://images.unsplash.com/photo-1533230408708-8f9f91d1235a?w=400', false),
('Zerro 1.2" (GE 1249)', 'Cakes', 49, '-', 'https://images.unsplash.com/photo-1533230408708-8f9f91d1235a?w=400', false),
('Miracle Cakes 0.8" (GE.0888)', 'Cakes', 88, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Bellatrix 0.8" (GE 08100I)', 'Cakes', 100, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', true),
('Army 0.8" (GE 08100J)', 'Cakes', 100, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Monoceros 0.8" (GE 08100H)', 'Cakes', 100, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Turbo 0.8" (GE 08100K)', 'Cakes', 100, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Mettalizee 0.8" (GE 08100M)', 'Cakes', 100, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Eiffel 0.8" (GE 08100D)', 'Cakes', 100, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Hydrus 1" (GE 1100D)', 'Cakes', 100, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Fantastic Cakes 0.8" 100 Shots (GE 92100)', 'Cakes', 100, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Cosmic Cakes 1.2" (GE 12100C)', 'Cakes', 100, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Black Mamba 0.6" 104 Shots (GE 06104)', 'Cakes', 104, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false),
('Sunset (GE 510)', 'Cakes', 120, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Midnight Cake 1.2" (GE.12138A)', 'Cakes', 138, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Glow Dancer Cakes 1.2" (GE.12138B)', 'Cakes', 138, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Magic Cakes 0.8"-1" (GE 08148)', 'Cakes', 148, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Venom 0.8" (GE 08168)', 'Cakes', 168, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Famous Cakes 1.0" (GE.1168)', 'Cakes', 168, '-', 'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?w=400', false),
('Zumba Cakes 1.0" (GE.1198)', 'Cakes', 198, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', false),
('Aurora Mix (GE 9199)', 'Cakes', 199, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', true),
('Big Bang 1" (GE 1200)', 'Cakes', 200, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', true),
('Fantastic Cakes 0.8" 200 Shots (GE 92200)', 'Cakes', 200, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', false),
('Black Mamba 0.6" 208 Shots (GE 06208)', 'Cakes', 208, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', false),
('Storm Shadow Cakes Mix (GE.9208)', 'Cakes', 208, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', false),
('Five Stars 0.8" (GE 08300A)', 'Cakes', 300, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', false),
('Black Mamba 0.6" 312 Shots (GE 06312)', 'Cakes', 312, '-', 'https://images.unsplash.com/photo-1467810563316-b5476525c0f9?w=400', false),
('Black Mamba 0.6" 504 Shots (GE 06504)', 'Cakes', 504, '-', 'https://images.unsplash.com/photo-1533230408708-8f9f91d1235a?w=400', false),
('Samurai (GE 08600A)', 'Cakes', 600, '-', 'https://images.unsplash.com/photo-1533230408708-8f9f91d1235a?w=400', true),
('Fantastic Cakes 0.8" 600 Shots (GE 92600)', 'Cakes', 600, '-', 'https://images.unsplash.com/photo-1533230408708-8f9f91d1235a?w=400', false),
('Black Mamba 0.6" 604 Shots (GE 06604)', 'Cakes', 604, '-', 'https://images.unsplash.com/photo-1533230408708-8f9f91d1235a?w=400', false);

-- ===== ARTILLERY (2 produk) =====
INSERT INTO products (name, category, shoot, duration, image_url, featured) VALUES
('Single Artillery Colorful 1.75" (GE.1001B/B)', 'Artillery', 1, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', true),
('Elang Mas (GE 2219)', 'Artillery', 1, '-', 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', false);

-- =============================================
-- SELESAI! Total: 45 produk
-- Roman: 5, Cakes: 38, Artillery: 2
-- =============================================
