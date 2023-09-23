Feature: Fatura Ekle Sorunları

  Scenario: Fatura Ekle butonuna tiklandiginda pop-up acılmıyor

    Given Kullanici siteye gider ve login olur
    When  Kullanici "Takip Ekranı"na gider
    And   Kullanici 'Fatura Ekle' butonuna tiklar
    Then  Bir pop-up penceresinin acilmadigi dogrulanir