//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Alura on 16/03/19.
//  Copyright © 2019 Alura. All rights reserved.
//

import UIKit

class Refeicao: NSObject, NSCoding {
    
    
    // MARK: - Atributos
    
    let nome: String
    let felicidade: Int
    var itens: Array<Item> = []
    
    // MARK: - Init
    
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    //MARK: - NSCoding
    func encode(with coder: NSCoder) {
        coder.encode(nome, forKey: "nome")
        coder.encode(felicidade, forKey: "felicidade")
        coder.encode(itens, forKey: "itens")
    }
    
    required init?(coder aDecoder: NSCoder) {
        nome = aDecoder.decodeObject(forKey: "nome" ) as! String
        felicidade = aDecoder.decodeInteger(forKey: "felicidade")
        itens = aDecoder.decodeObject(forKey: "itens") as! Array
    }
    
    
    // MARK: - Metodos
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    }
    func detalhes() -> String {
        var mensagem = ("Felicidade: \(felicidade)")
        
        for item in itens {
            mensagem += ", \(item.nome) - Calorias: \(item.calorias)"
        }
        return mensagem
    }
}
