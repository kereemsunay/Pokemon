//
//  detailsVCViewController.swift
//  PokemonApp
//
//  Created by Kerem on 3.01.2020.
//  Copyright © 2020 Kerem. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    var selectedPokemon : Pokemon?
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var attackLabel: UILabel!
    
    @IBOutlet weak var defenseLabel: UILabel!
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NameLabel.text = selectedPokemon?.name
        imageView.image = selectedPokemon?.image
        attackLabel.text = "\(selectedPokemon?.attack ?? 0)"
        defenseLabel.text = "\(selectedPokemon?.defense ?? 0)"
        speedLabel.text = "\(selectedPokemon?.speed ?? 0)"
    }
    

   

}
