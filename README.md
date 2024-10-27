1. .env dosyasında kendi mysql ve Redis bağlandı ayarlarınızı yapınız
2. php migrate ile tablolarımı oluşturunuz 
3. php db:seed ile tablolarımı doldurunuz   /// database/cryptopanic_db.sql  dosyasını da mysql için kullanabilirsiniz
4. php artisan fetch-news {page=1} {flush=0} , kaç sayfa (x20) haber çekmek istiyorsanız çalıştırınız. flush=1  olması halinde redis db boşaltılır 
5. php artisan schedule:run >> /dev/null 2>&1  ile cronu çalıştırınız
6. CryptoPanicController ve CryptoPanicService dosyalarını inceleyiniz 

