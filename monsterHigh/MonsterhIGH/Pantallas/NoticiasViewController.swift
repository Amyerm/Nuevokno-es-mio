//
//  NoticiasViewController.swift
//  MonsterhIGH
//
//  Created by alumno on 11/13/24.
//

import UIKit

class NoticiasViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var noticias: [Noticia] = [
        Noticia(titulo: "Nueva película de Monster High", descripcion: "Mattel y Universal se alían para llevar a las 'Monster High' al cine", imagenURL: "https://kinotico.es/_next/image?url=https%3A%2F%2Fcdn.sanity.io%2Fimages%2Fgfy7vknl%2Fproduction%2Ff06d996810536126ca9a571aa19cddde5b4c0242-1080x1080.jpg%3Frect%3D0%2C117%2C1077%2C736%26w%3D1024%26h%3D700%26dpr%3D3&w=2048&q=75"),
        Noticia(titulo: "Evento de Halloween", descripcion: "¡Un evento espeluznante con disfraces y actividades!", imagenURL: "https://ejemplo.com/imagen2.jpg")
        // Agrega más noticias si lo deseas
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NoticiaTableViewCell.self, forCellReuseIdentifier: "NoticiaCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noticias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NoticiaCell", for: indexPath) as? NoticiaTableViewCell else {
            return UITableViewCell()
        }
        
        let noticia = noticias[indexPath.row]
        cell.configurarCon(noticia)
        
        return cell
    }
}



