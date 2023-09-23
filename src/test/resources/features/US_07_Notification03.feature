Feature: Fatura Bildiri Islemlerı


  Scenario Outline: Son odeme tarihi gecen faturalara haftada 1 hatirlatma bildirimi gonderilir

    Given Kullanici siteye gider ve login olur
    When  Kullanici "Takip Ekranı"na gider
    When  Kullanici "<Fatura Adi>", "<Son Odeme Tarihi>" , ve "<Fatura Tutari>"ni girer

    Examples:
      | Fatura Adi | Son Odeme Tarihi | Fatura Tutari |
      | Su         | 2023-09-25       | 175.00        |

    Then  Kullanici "Takip Ekranı"na geri doner
    When  Listedeki faturaların dogru bir sekilde goruntulendigi dogrulanır
    When  Kullanici son odeme tarihinin uzerinden 1 hafta gecmis oldugunu gorur
    Then  Kullanici bir hatirlatma bildirimi alir
    Then  Kullanicinin basarili bir sekilde hatırlatma bildirimi aldıgı dogrulanir
