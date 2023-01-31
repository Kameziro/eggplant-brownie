//
//  Alerta.swift
//  eggplant-brownie
//
//  Created by Cleber Neto on 30/01/23.
//  Copyright © 2023 Alura. All rights reserved.
//

import Foundation
import UIKit

class alerta {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    
    func exibe(titulo: String = "Atenção", mensagem: String){
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel)
        alerta.addAction(ok)
        controller.present(alerta,animated: true,completion: nil)
    }
}
