package br.com.uninove.controle.ui;

import java.io.IOException;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.control.Menu;
import javafx.scene.control.MenuItem;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class TelaPrincipalControlador {

    @FXML
    private MenuItem Cad_Usuario;

    @FXML
    private MenuItem Cad_Fechar;

    @FXML
    private MenuItem Rel_Office;

    @FXML
    private MenuItem Con_Equip;

    @FXML
    private Menu Mn_Cad;

    @FXML
    private MenuItem Rel_Equip;

    @FXML
    private MenuItem Rel_SO;

    @FXML
    private MenuItem Rel_Compra;

    @FXML
    private MenuItem Cad_Equip;
    
    @FXML
    private BorderPane Pn_Fundo;
    
	private Stage stage;

	public void setStage(Stage stage) {
		this.stage = stage;
	}
    
    @FXML
    void MnCadOnAction(ActionEvent event) {
    	
    }

    @FXML
    void CadEquipOnAction(ActionEvent event) {

    }

    @FXML
    void CadUsuarioOnAction(ActionEvent event) throws IOException{
    	FXMLLoader loader = new FXMLLoader(getClass().getResource(
				"/resource/TelaCadastroControlador.fxml"));
		Parent parent = loader.load();
		Pn_Fundo.setCenter(parent);
		stage.setTitle("Inventario - Cadastro de Usuário");
    }

    @FXML
    void CadFecharOnAction(ActionEvent event) {

    }

    @FXML
    void ConEquipOnAction(ActionEvent event) {

    }

    @FXML
    void RelSOOnAction(ActionEvent event) {

    }

    @FXML
    void RelCompraOnAction(ActionEvent event) {

    }

    @FXML
    void RelOfficeOnAction(ActionEvent event) {

    }

    @FXML
    void RelEquipOnAction(ActionEvent event) {

    }

}
