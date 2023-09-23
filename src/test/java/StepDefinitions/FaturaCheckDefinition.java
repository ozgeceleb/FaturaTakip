package StepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;


public class FaturaCheckDefinition {

    @Given("Kullanici sayfaya gider")
    public void kullaniciSayfayaGider() {

    }

    @And("Kullanici Takip Ekraninda faturasinin {string},{string},{string},{string}kisimlarini gorur")
    public void kullaniciTakipEkranindaFaturasininKisimlariniGorur(String arg0, String arg1, String arg2, String arg3, String arg4) {
    }

    @When("Kullanici {string} faturasini öder ve onay isaretini isaretler")
    public void kullaniciFaturasiniOderVeOnayIsaretiniIsaretler(String arg0) {
    }

    @Then("Kullanici listede {string} kisminin {string}oldugunu gorur")
    public void kullaniciListedeKismininEvetOldugunuGorur(String arg0, String arg1) {
    }

    @When("Kullanici {string} faturasini öder ve {string} isaretine check atar")
    public void kullaniciFaturasiniOderVeIsaretineCheckAtar(String arg0, String arg1, String arg2) {

    }
}