# Konrul VTOL Simulasyonu
## Kurulum
Simulasyonun çalışması için Gazebo Harmonic (v8.9.0) kurulu olmalıdır.
Dosyalar aşağıdaki komut ile indirilebilir:
```git clone https://github.com/az47klk/konrul-vtol-simulation.git```
Dosyalar indirildikten sonra dizin içinde terminal açılıp:
```make install```
yazılarak gerekli programlar, kütüphaneler ve izinler ayarlanır. Eğer daha önceden QGroundControl kullanılmışsa izinleri ayarlama kısmı atlanabilir:
```make install_without_perm```
## Kullanım
Simulasyonu başlatmak için: 
```make start_sim```
Engel tespit yazılımını başlatmak için:
```make cam```
QGroundControl yazılımını başlatmak için: 
```make qgc```
komutları kullanılır.
