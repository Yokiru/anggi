# Golden Eye Bitung

Website katalog kembang api untuk Golden Eye Bitung, Sulawesi Utara.

## Fitur

- 🎆 Katalog produk kembang api (Roman Candle, Cake, dll)
- 📱 Responsive design (mobile-friendly)
- 🔥 Dark theme dengan aksen merah
- 📹 Video popup YouTube untuk demo produk
- 💬 Integrasi WhatsApp untuk pemesanan
- 📍 Link ke Google Maps lokasi toko
- 🔧 Admin panel untuk kelola produk

## Tech Stack

- HTML5 + Tailwind CSS
- JavaScript (Vanilla)
- Supabase (Database)

## Setup

### 1. Clone Repository
```bash
git clone https://github.com/Yokiru/anggi.git
cd anggi
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Setup Supabase
- Buat project di [Supabase](https://supabase.com)
- Jalankan SQL di `setup.sql` dan `add_video_column.sql`
- Update `supabase-config.js` dengan credentials Anda

### 4. Run Locally
```bash
npm run dev
```
Buka http://localhost:5000

## Deployment

Deploy ke Vercel, Netlify, atau hosting statis lainnya.

## License

MIT
