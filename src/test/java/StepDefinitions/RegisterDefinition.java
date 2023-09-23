package StepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class RegisterDefinition {

    @Given("Kullanici sayfaya gider")
    public void kullaniciSayfayaGider() {
    }

    @When("Kullanici kaydi olusturmak için Register ekranına gider")
    public void kullaniciKaydiOlusturmakIcinRegisterEkranınaGider() {
    }
    
    @When("Kullanici {string},{string},{string}, {string} ve {string} girer")
    public void kullaniciVeGirer(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7) {
    }
    @When("Kullanici ad,soyad,kullanici adı, telefon numarasi ve sifre girer")
    public void kullaniciAdSoyadKullaniciAdıTelefonNumarasiVeSifreGirer() {
    }

    @Then("Kullanici dogrulama ekranına yönlendirilir")
    public void kullaniciDogrulamaEkranınaYonlendirilir() {
    }

    @Then("Kullanici telefonuna sms ile gelen dogrulama kodunu girer")
    public void kullaniciTelefonunaSmsIleGelenDogrulamaKodunuGirer() {
    }


    @Then("Kullanici basarili bir sekilde kayit olusturur")
    public void kullaniciBasariliBirSekildeKayitOlusturur() {
    }


    @Then("Kullanicinin basarili bir sekilde kayit olusturdugu dogrulanir")
    public void kullanicininBasariliBirSekildeKayitOlusturduguDogrulanir() {

    }
}
