Feature: Kullanici Giris Sorunu

  Scenario Outline: Kullanici adi ve sifre ile giris yaparken sorun yasanir

    Given Kullanici siteye gider
    When Kullanici "Login" ekranına gelir
    When Kullanıcı kullanıcı adı "<gecersizKullaniciAdi>" ve şifre "<gecersizSifre>" ile giriş yapar
    Then Kullanici "Login" ekranında kalir

    Examples:
      | gecersizKullaniciAdi |  | gecersizSifre |
      | Ozzge                |  | Clarusway1    |
      | ozlem                |  | Kinder12      |
      | Ferhahht             |  | Ferhat        |