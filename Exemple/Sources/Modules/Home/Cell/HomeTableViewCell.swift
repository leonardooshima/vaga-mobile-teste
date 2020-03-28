//
//  HomeTableViewCell.swift
//  Exemple
//
//  Created by Leonardo Oshima on 28/03/20.
//  Copyright © 2020 Leonardo Oshima. All rights reserved.
//

import UIKit

struct HomeCellDTO {
    var fotos: String
    var color: UIColor
    var numero: String
    var nome: String
}

class HomeTableViewCell: UITableViewCell {

    //MARK: - Outlets    
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var labelNumero: UILabel!
    @IBOutlet weak var labelNome: UILabel!
    
    //MARK: - Setup
    func fill(dto: HomeCellDTO) {
        imagePokemon.image = UIImage(named: dto.fotos)
        view.backgroundColor = dto.color
        labelNumero.text = dto.numero
        labelNome.text = dto.nome
    }
}
