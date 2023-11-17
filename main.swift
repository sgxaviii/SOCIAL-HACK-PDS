import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Crear una etiqueta
        let etiqueta = UILabel()
        etiqueta.text = "¡Hola, mundo!"
        etiqueta.textAlignment = .center
        etiqueta.frame = CGRect(x: 50, y: 100, width: 300, height: 30)

        // Crear un botón
        let boton = UIButton(type: .system)
        boton.setTitle("Presionar", for: .normal)
        boton.frame = CGRect(x: 150, y: 200, width: 100, height: 30)

        // Agregar un controlador de eventos al botón
        boton.addTarget(self, action: #selector(botonPresionado), for: .touchUpInside)

        // Agregar la etiqueta y el botón a la vista principal
        view.addSubview(etiqueta)
        view.addSubview(boton)
    }

    // Función que se llama cuando se presiona el botón
    @objc func botonPresionado() {
        print("Botón presionado")
        // Puedes realizar otras acciones aquí
    }
}

// Crear una instancia del controlador de vista y mostrar la interfaz gráfica
let viewController = ViewController()
viewController.view.frame = CGRect(x: 0, y: 0, width: 400, height: 300)
PlaygroundPage.current.liveView = viewController.view
