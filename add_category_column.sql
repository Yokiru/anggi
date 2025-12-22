-- Add category column to products table
ALTER TABLE products ADD COLUMN IF NOT EXISTS category TEXT DEFAULT 'Cakes';
