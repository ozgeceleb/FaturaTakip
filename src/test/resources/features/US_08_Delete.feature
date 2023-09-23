Feature: Fatura Silme Islemleri

  Scenario Outline: Kullanici fatura satirini sola kaydırarak silebilmeli

    Given Kullanici siteye gider ve login olur
    When  Kullanici "Takip Ekranı"na gider
    When  Kullanici "<Fatura Adi>", "<Son Odeme Tarihi>" , ve "<Fatura Tutari>"ni girer

    Examples:
      | Fatura Adi | Son Odeme Tarihi | Fatura Tutari |
      | Su         | 2023-09-25       | 175.00        |

    Then  Kullanici "Takip Ekranı"na geri doner
    When  Listedeki faturaların dogru bir sekilde goruntulendigi dogrulanır
    When  Kullanici silmek istediği fatura satırını sola kaydirir
    When  Kullanicinin silmek istedigi fatura silinmis olur
    When  Kullanici "Takip Ekranı"na geri doner
    Then  Kullanicinin silmek istediği faturanin silindigi dogrulanir

