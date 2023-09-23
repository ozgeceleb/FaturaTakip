Feature: Fatura Bildiri Islemleri

Scenario Outline: Son ödeme tarihine 3 gün kaldığında hatırlatma bildirimi gönderilir

    Given Kullanici siteye gider ve login olur
    When  Kullanici "Takip Ekranı"na gider
    When  Kullanici "<Fatura Adi>", "<Son Odeme Tarihi>" , ve "<Fatura Tutari>"ni girer

    Examples:
        | Fatura Adi | Son Odeme Tarihi | Fatura Tutari |
        | Dogalgaz   | 2023-05-10       | 850.00        |

    Then  Kullanici "Takip Ekranı"na geri doner
    When  Listedeki faturaların dogru bir sekilde goruntulendigi dogrulanır
    When  Kullanici son ödeme tarihine 3 gün kalmis oldugunu gorur
    Then  Kullanici bir hatirlatma bildirimi alir
    Then  Kullanicinin basarili bir sekilde hatırlatma bildirimi aldıgı dogrulanir


