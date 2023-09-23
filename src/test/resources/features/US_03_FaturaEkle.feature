Feature: Fatura Ekleme Islemleri

  @positive
Scenario Outline: Kullanıcı "Fatura Ekle" butonuna tıkladığında popup penceresi açılır

  Given Kullanici uygulamaya giris yapar,login olur
  When  Kullanici "Takip Ekranı"na gider
  When  Kullanici 'Fatura Ekle' butonuna tiklar
  When  Pop-up penceresi acilir
  When  Kullanici "<Fatura Adi>", "<Son Odeme Tarihi>" , ve "<Fatura Tutari>"ni girer
  And   Kullanici kaydet butonuna tiklar
  Then  Fatura basariyla eklenir
  Then  Listedeki faturaların dogru bir sekilde goruntulendigi dogrulanır

  Examples:
    | Fatura Adi | Son Odeme Tarihi | Fatura Tutari |
    | Elektrik   | 2023-06-12       | 150.00        |
    | Su         | 2023-09-25       | 75.00         |
    | Telefon    | 2023-05-15       | 130.00        |

    @negative
    Feature: Fatura Ekle Sorunları

  Scenario: Fatura Ekle butonuna tiklandiginda pop-up acılmıyor

    Given Kullanici siteye gider ve login olur
    When  Kullanici "Takip Ekranı"na gider
    And   Kullanici 'Fatura Ekle' butonuna tiklar
    Then  Bir pop-up penceresinin acilmadigi dogrulanir



