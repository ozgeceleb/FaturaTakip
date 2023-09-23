Feature: Kullanici Kayit Islemleri

  Scenario Outline: Kullanici basarili bir sekilde kayit olusturabilmelidir

    Given Kullanici sayfaya gider
    When  Kullanici kaydi olusturmak için Register ekranına gider
    When  Kullanici "<Ad>","<Soyad>","<Kullanici adi>", "<Telefon numarasi>" ve "<Sifre>" girer
    Then  Kullanici dogrulama ekranına yönlendirilir
    Then  Kullanici telefonuna sms ile gelen dogrulama kodunu girer
    Then  Kullanicinin basarili bir sekilde kayit olusturdugu dogrulanir

    Examples:
      | Ad   | Soyad  | Kullanici adi | Telefon numarasi | Sifre |
      | Ozge | Celebi | Ozge_celeb    | 02552185246      | 12345 |




