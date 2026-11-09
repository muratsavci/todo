# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users

Herkese açık bir ürün: tanımadığı insanlar da e-posta ile kayıt olup kendi kişisel yapılacaklar listesini düzenli olarak kullanır. Her kullanıcı yalnızca kendi görevlerini görür.

## Product Purpose

Kişisel bir yapılacaklar listesi: görev ekle, tamamla, düzenle, sırala, bitenleri temizle. Görevler hesapta (Supabase) tutulur; aynı hesapla her cihazdan ulaşılır. Başarı: kullanıcının listeyi gün boyu açık tutup zahmetsizce güncellemesi.

## Positioning

Henüz belirlenmedi. Ürünün rakiplerden ayrışan bir iddiası kayıt altında değil; uydurulmamalı.

## Operating Context

- Bilgisayarda bir tarayıcı sekmesinde gün boyu açık durur; iş arasında görev eklenir ve işaretlenir.
- Telefonda hızlıca açılıp akla gelen not düşülür.
- Yayın adresi: https://muratsavci.github.io/todo/ (GitHub Pages). Yerel dosya olarak çift tıklayarak da açılır.

## Capabilities and Constraints

- Tek HTML dosyası (`todo.html`), kurulum ve derleme adımı yok. Bu kısıt korunmalı.
- Arayüz dili Türkçe.
- Kayıt: e-posta + şifre; Brevo üzerinden gelen 6 haneli onay koduyla hesap aktifleşir. Giriş, çıkış, "kodu tekrar gönder".
- Görevler: ekleme, tamamlandı işareti, çift tıklayarak düzenleme, silme, sürükle-bırak sıralama, Tümü/Aktif/Bitenler filtresi, bitenleri toplu silme, kalan/biten sayacı.
- Veri: Supabase `tasks` tablosu, satır düzeyinde güvenlik (RLS); kitaplık jsDelivr'den sabit sürüm ve bütünlük kontrolüyle yüklenir.
- Eski, yalnızca tarayıcıda tutulan görevler ilk girişte bir kez hesaba aktarılır.
- Sistem açık/koyu temasına uyar.

## Evidence on Hand

Kullanıcı yorumu, müşteri, kullanım istatistiği veya marka varlığı (logo, renk, yazı tipi kararı) yok; bunlar uydurulmamalı.

## Product Principles

1. Gün boyu açık kalan bir sekme olarak yorucu değil, sakin ve hızlı olmalı.
2. Görev eklemek tek hamle olmalı; telefonda da.
3. Kurulum yok: tek dosya, çift tıkla veya linke tıkla, çalışsın.
4. Kişinin verisi yalnızca kendisinin.
