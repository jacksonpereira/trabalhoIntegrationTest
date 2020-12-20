package steps;

import cucumber.api.java.en.Then;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Entao;
import groovy.json.internal.LazyMap;
import org.junit.Assert;
import support.RESTSupport;

import java.util.List;

public class GeneralSteps {

    @E("^o usuário deve ver (.*) com valor de \"([^\"]*)\"$")
    @Then("^user should see (.*) with value \"([^\"]*)\"$")
    public void userShouldSeeLoginWithValue(String field, String value) throws Throwable {
        Assert.assertEquals(value, RESTSupport.key(field));
    }

    @Entao("^o usuário deve ver a mensagem \"([^\"]*)\"$")
    @Then("^user should see \"([^\"]*)\" message$")
    public void userShouldSeeMessage(String type) throws Throwable {
        LazyMap messageJson = new LazyMap();
        messageJson.put("salvo com sucesso", 201);
        messageJson.put("sucesso", 200);
        messageJson.put("sem conteudo", 204);
        messageJson.put("nao encontrado", 404);
        messageJson.put("nao autorizado", 401);

        Assert.assertEquals(messageJson.get(type),RESTSupport.getResponseCode());
    }

    @Entao("^o usuário deve ver os campos abaixo:$")
    @Then("^user should see fields below:$")
    public void userShouldSeeFieldsBelow(List<List<String>> table) {
            System.out.println(table);
            String field = "";
            String value = "";
            for (List<String> row: table){
                field = row.get(0);
                value = row.get(1);
                Assert.assertEquals(value, RESTSupport.key(field));
                System.out.println("Test case => " + row.get(0) + " >>> Field OK!");
            }
    }
}
