package br.com.uninove.controle;

import br.com.uninove.controle.ui.LoginControlador;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
//import javafx.scene.image.Image;
import javafx.stage.Stage;

public class Start extends Application {

	public static void main(String[] args) {
		launch(args);
	}

	public void start(Stage stage) throws Exception {

		FXMLLoader loader = new FXMLLoader(getClass().getResource("/resource/LoginControlador.fxml"));
		Parent parent = loader.load();
		LoginControlador controller = loader.getController();
		controller.setStage(stage);

		stage.setScene(new Scene(parent));
//		stage.getIcons().add(new Image(getClass().getResourceAsStream("/resource/image/funcionario-icon.png")));
		stage.setTitle("Inventario");
		stage.show();
	}
}
