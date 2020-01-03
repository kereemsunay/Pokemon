//
//  ViewController.swift
//  PokemonApp
//
//  Created by Kerem on 3.01.2020.
//  Copyright © 2020 Kerem. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var myPokemons = [Pokemon]()
    var chosenPokemon : Pokemon?
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        //Class
        let bulbasaur = Pokemon(pokemonName: "Bulbasaur", pokemonImage: UIImage(named: "bulbasaur")!, pokemonAttack: 49, pokemonDefense: 49, pokemonSpeed: 45)
         let charmander = Pokemon(pokemonName: "charmander", pokemonImage:UIImage(named: "charmander")!, pokemonAttack: 52, pokemonDefense: 43, pokemonSpeed: 65)
        let pidgeot = Pokemon(pokemonName: "Pidgeot", pokemonImage: UIImage(named: "pidgeot")!, pokemonAttack: 80, pokemonDefense: 75, pokemonSpeed: 101)
        let pikachu = Pokemon(pokemonName: "Pikachu", pokemonImage: UIImage(named: "pikachu")!, pokemonAttack: 55, pokemonDefense: 40, pokemonSpeed: 90)
        let psyduck = Pokemon(pokemonName: "Psyduck", pokemonImage: UIImage(named: "psyduck")!, pokemonAttack: 52, pokemonDefense: 48, pokemonSpeed: 55)
        let squirtle = Pokemon(pokemonName: "Squirtle", pokemonImage: UIImage(named: "squirtle")!, pokemonAttack: 48, pokemonDefense: 65, pokemonSpeed: 43)
        
        myPokemons.append(bulbasaur)
        myPokemons.append(charmander)
        myPokemons.append(pidgeot)
        myPokemons.append(pikachu)
        myPokemons.append(psyduck)
        myPokemons.append(squirtle)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPokemons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myPokemons[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         chosenPokemon = myPokemons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedPokemon = chosenPokemon
        }
    }
    

}

