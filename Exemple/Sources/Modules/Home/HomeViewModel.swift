//
//  HomeViewModel.swift
//  Exemple
//
//  Created by Leonardo Oshima on 28/03/20.
//  Copyright © 2020 Leonardo Oshima. All rights reserved.
//

import Foundation
import UIKit

class HomeViewModel {
    
    //MARK - Proporties
    private let colors: [UIColor] = [.green, .gray, .brown, .blue, .red]
    private let numeros: [String] = ["1", "2", "3", "4", "5"]
    private let nomes: [String] = ["Bulbasaur", "Ivysaur", "Venusaur", "Squirtle", "Wartortle"]
    private let fotos: [String] = ["img1", "img2", "img3", "img4", "img5"]
    
    //MARK: - TableView
    func numberOfRows() -> Int {
        return colors.count
    }
    
    func dtoForRow(indexPath: IndexPath) -> HomeCellDTO {
        return HomeCellDTO(fotos: fotos[indexPath.row], color: colors[indexPath.row], numero: numeros[indexPath.row], nome: nomes[indexPath.row])
    }
    
    func dtoForRowDt(indexPath: IndexPath) -> DetailCellDTO {
        return DetailCellDTO(fotos: fotos[indexPath.row], color: colors[indexPath.row], numero: numeros[indexPath.row], nome: nomes[indexPath.row])
    }
    
    func transporterColor(indexPath: IndexPath) -> UIColor {
        return colors[indexPath.row]
    }
    
    func transporterNumero(indexPath: IndexPath) -> String {
        return numeros[indexPath.row]
    }
    
    func transporterNome(indexPath: IndexPath) -> String {
        return nomes[indexPath.row]
    }
    
    func transporterFoto(indexPath: IndexPath) -> String {
        return fotos[indexPath.row]
    }
}
