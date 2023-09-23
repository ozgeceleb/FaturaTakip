Feature: Farklı Cihazdan Login Islemleri

  Scenario Outline: Kullanici farkli cihazdan login oldugunda tum islemleri gorebilmeli

    Given Kullanici farkli cihazdan "<username>" ve "<sifre> girerek "login olur

    Examples:
      | username |  | sifre      |
      | Ozge     |  | Clarusway1 |
      | Ozlem    |  | Kinder12   |
      | Ferhat   |  | FbFerhat   |

    And   Kullanici "Takip Ekranı"na gider
    Then  Kullanicinin yapmis oldugu tüm kayitlari gordugu dogrulanir
