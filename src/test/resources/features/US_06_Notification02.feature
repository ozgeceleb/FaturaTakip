Feature: Fatura Bildiri Islemleri

Scenario Outline: Son odeme tarihinde hatırlatma bildirimi gonderilir

     Given Kullanici siteye gider ve login olur
     When  Kullanici "Takip Ekranı"na gider
     When  Kullanici "<Fatura Adi>", "<Son Odeme Tarihi>" , ve "<Fatura Tutari>"ni girer

     Examples:
          | Fatura Adi | Son Odeme Tarihi | Fatura Tutari |
          | Internet   | 2023-09-25       | 75.00         |

     Then  Kullanici "Takip Ekranı"na geri doner
     When  Listedeki faturaların dogru bir sekilde goruntulendigi dogrulanır
     When  Kullanici son ödeme tarihinin son gün oldugunu gorur
     Then  Kullanici bir hatirlatma bildirimi alir
     Then  Kullanicinin basarili bir sekilde hatırlatma bildirimi aldıgı dogrulanir