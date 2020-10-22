//
//  ViewController.swift
//  AutoLayoutSecondLevel
//
//  Created by Rhian Lopes da Costa on 21/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoFechar: UIButton!
    @IBOutlet weak var botaoCarrinho: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.botaoFechar.layer.cornerRadius = botaoFechar.frame.width / 2
        self.botaoCarrinho.layer.cornerRadius = botaoCarrinho.frame.width / 2
    }


}

