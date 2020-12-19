package steps;

import cucumber.api.java.pt.*;
import definition.Processo;
import support.RESTSupport;

public class ProcessoSteps {
    @Dado("^que o usuário gostaria de salvar um Processo$")
    public void queOUsuarioGostariaDeSalvarUmProcesso() {
        Processo.clearFields();
    }

    @E("^o usuário informa (.*) com valor de \"([^\"]*)\"$")
    public void oUsuarioInformaVaraComValorDe(String field, String value) {
        Processo.addFields(field, value);
    }

    @Quando("^o usuário clica no botão de Salvar$")
    public void oUsuarioClicaNoBotaoDeSalvar() {
        RESTSupport.executePost(Processo.getEndPoint(),Processo.getFields());
        Processo.setLastProcesso(RESTSupport.key("id").toString());
        Processo.clearFields();
    }

    @E("^deseja ver as informações do Processo$")
    public void desejaVerAsInformacoesDoProcesso() {
        RESTSupport.executeGet(Processo.getEndPoint() + Processo.getLastProcesso() + ".json");
    }

    @E("^o usuário clica no botão de salvar novamente$")
    public void oUsuarioClicaNoBotaoDeSalvarNovamente() {
        RESTSupport.executePut(Processo.getEndPoint() + Processo.getLastProcesso() + ".json",Processo.getFields());
    }

    @E("^o usuário clica no botão de Apagar$")
    public void oUsuarioClicaNoBotaoDeApagar() {
        RESTSupport.executeDelete(Processo.getEndPoint() + Processo.getLastProcesso() + ".json");
    }
}
