Feature: Login Islemleri

Scenario Outline:Kulanici username ve sifre ile sayfaya giris yapabilir

    @positive

    Given Kullanici sayfaya gider
    When  Kullanici "Login" ekranına gelir
    When  Kullanici "<username>" ve "<sifre>" sini girer
    When  Kullanici login butonuna tiklar
    Then  Kullanici sayfaya basarili bir sekilde giris yapar
    Then  Kullanicinin ana sayfada oldugu dogrulanir

    Examples:
        | username |  | sifre      |
        | Ozge     |  | Clarusway1 |
        | Ozlem    |  | Kinder12   |
        | Ferhat   |  | FbFerhat   |

    @negative
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



