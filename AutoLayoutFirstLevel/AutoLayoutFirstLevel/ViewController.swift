//
//  ViewController.swift
//  AutoLayoutFirstLevel
//
//  Created by Rhian Lopes da Costa on 19/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var botaoAdicionarFavorito: UIButton!
    
    @IBOutlet weak var selecaoQuantidade: UIView!
    
    @IBOutlet weak var selecaoTamanho: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.botaoAdicionarFavorito.layer.borderWidth = 1
        self.botaoAdicionarFavorito.layer.borderColor = UIColor(named: "CinzaClaro")?.cgColor
        
        self.selecaoQuantidade.layer.borderWidth = 1
        self.selecaoQuantidade.layer.borderColor = UIColor(named: "CinzaClaro")?.cgColor
        
        self.selecaoTamanho.layer.borderWidth = 1
        self.selecaoTamanho.layer.borderColor = UIColor(named: "CinzaClaro")?.cgColor
    }

}
