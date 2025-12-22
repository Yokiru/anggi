-- 0. Drop the table if it already exists (WARNING: This deletes all data in the table)
-- We do this to ensure a clean setup since you got a "relation already exists" error.
DROP TABLE IF EXISTS products;

-- 1. Create the products table
CREATE TABLE products (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL,
  shoot INTEGER NOT NULL,
  duration TEXT NOT NULL,
  image_url TEXT NOT NULL,
  featured BOOLEAN DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- 2. Enable Row Level Security (RLS)
ALTER TABLE products ENABLE ROW LEVEL SECURITY;

-- 3. Create a policy that allows everyone to select/read products (Public Read)
CREATE POLICY "Enable read access for all users" ON products
  FOR SELECT USING (true);

-- 4. Create a policy that allows everyone to insert/update/delete (Public Write - For Admin Page)
-- Note: In a real production app, you would restrict this to authenticated users only.
CREATE POLICY "Enable write access for all users" ON products
  FOR ALL USING (true);
