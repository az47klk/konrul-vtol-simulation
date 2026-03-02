# Konrul VTOL: Demiryolu Güvenliği İçin Otonom Engel Tespit Simülasyonu

**Konrul VTOL**, demiryolu hatları üzerinde otonom uçuş gerçekleştirerek raylar üzerindeki engelleri (insan, araç, kaya vb.) gerçek zamanlı olarak tespit eden ve yer kontrol istasyonuna bildiren bir **İHA (VTOL) simülasyon projesidir.**

<img width="480" alt="resim" src="https://github.com/user-attachments/assets/912917a1-f45f-45cb-8eec-5548c6394dce" />

## Teknik Mimari ve Yetenekler
Bu proje, modern otonom sistem standartları kullanılarak geliştirilmiştir:
* **Otonom Uçuş Kontrolü:** **PX4 Autopilot** stack kullanılarak VTOL (Dikey İniş Kalkış) karakteristiğine uygun görev planlaması yapıldı.
* **Simülasyon Ortamı:** Fiziksel dünya modellemesi için **Gazebo Harmonic (v8.9.0)** kullanıldı.
* **Nesne Tespiti:** Demiryolu üzerindeki engellerin tanımlanması için **YOLO (You Only Look Once)** mimarisi üzerinden eğitilmiş görüntü işleme modelleri entegre edildi.
* **Yer Kontrol İstasyonu:** Görev takibi ve telemetri verileri için **QGroundControl** entegrasyonu sağlandı.
* **Otomasyon:** Kurulum ve çalıştırma süreçleri, karmaşık bağımlılıkları yönetmek adına **Makefile** üzerinden standardize edildi.

## Kurulum
Simülasyonun çalışması için sisteminizde **Gazebo Harmonic (v8.9.0)** kurulu olmalıdır.

```bash
# Depoyu klonlayın
git clone https://github.com/az47klk/konrul-vtol-simulation.git
cd konrul-vtol-simulation

# Gerekli kütüphaneleri ve izinleri ayarlayın
make install

# Eğer daha önceden QGroundControl izinlerini ayarladıysanız:
make install_without_perm
```
## Kullanım

Sistemi farklı modülleriyle ayağa kaldırmak için aşağıdaki komutları kullanabilirsiniz:
### 1- Simülasyonu Başlat:
```bash
make start_sim
```
### 2- YOLO Engel Tespit Yazılımını Aktif Et:
```bash
make cam
```
### 3- QGroundControl Arayüzünü Aç:
```bash
make qgc
```
Hazır görev planı myplan3.plan dosyasındadır. QGroundControl içerisinden Logo > Plan Flight > File > Open adımlarını izleyerek bu planı yükleyebilirsiniz.
