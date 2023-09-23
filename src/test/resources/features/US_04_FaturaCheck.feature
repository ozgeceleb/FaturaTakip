Feature: Faturaların Listelenmesi Ve Onayı


Scenario Outline: Faturalar Eklendiginde Listelendigi Gorulur
   Given Kullanici siteye gider ve login olur
   When  Kullanici "Takip Ekranı"na gider
   When  Kullanici 'Fatura Ekle' butonuna tiklar
   When  Kullanici "<Fatura Adi>", "<Son Odeme Tarihi>" , ve "<Fatura Tutari>"ni girer
   And   Kullanici "Takip Ekranı"na geri doner
   And   Kullanici Takip Ekraninda faturasinin "<Fatura Adi>","<Son Odeme Tarihi>","<Fatura Tutari>","<Odendi>"kisimlarini gorur

   Examples:
      | Fatura Adi | Son Odeme Tarihi | Fatura Tutari | Odendi |
      | Elektrik   | 2023-06-12       | 250.00        | Hayir  |
      | Su         | 2023-03-15       | 120.00        | Hayir  |
      | Telefon    | 2023-05-15       | 130.00        | Hayir  |

   Scenario Outline: Faturalar Odendi Olarak Isaretlendiginde Odendigi Gorulur
   When  Kullanici "<Fatura Adi>" faturasini öder ve "<Odendi>" isaretine check atar
   When  Kullanici "Takip Ekranı"na geri doner
   Then  Kullanici listede "<Odendi>" kisminin 'Evet'oldugunu gorur

     Examples:

        | Fatura Adi |  |  | Odendi |
        | Elektrik   |  |  | Evet   |
        | Su         |  |  | Evet   |
        | Telefon    |  |  | Evet   |


















