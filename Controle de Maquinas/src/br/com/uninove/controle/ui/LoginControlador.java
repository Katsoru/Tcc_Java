package br.com.uninove.controle.ui;

import java.io.IOException;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;

public class LoginControlador {

    @FXML
    private Button Bt_Entrar;
    
	private Stage stage;

	public void setStage(Stage stage) {
		this.stage = stage;
	}

    @FXML
    void entrarOnAction(ActionEvent event) throws IOException{
    	
    	// TODO: Linkar com o Banco//    	
    
    	FXMLLoader loader = new FXMLLoader(getClass().getResource(
				"/resource/TelaPrincipalControlador.fxml"));
		Parent parent = loader.load();
//		stage.setTitle("Projeto Final - Cadastro de Cargos");
		TelaPrincipalControlador controller = loader.getController();
		controller.setStage(stage);

		stage.setScene(new Scene(parent));
//		stage.getIcons().add(new Image(getClass().getResourceAsStream("/resource/image/funcionario-icon.png")));
		stage.setTitle("Inventario");
		stage.setWidth(600);
		stage.setHeight(400);
		stage.show();
    }

}
