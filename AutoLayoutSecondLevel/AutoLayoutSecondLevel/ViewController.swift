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
    @IBOutlet weak var menuApresentacaoView: UIView!
    @IBOutlet weak var avaliacaoView: UIButton!
    @IBOutlet weak var primeiroAdicionarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.botaoFechar.layer.cornerRadius = botaoFechar.frame.width / 2
        self.botaoCarrinho.layer.cornerRadius = botaoCarrinho.frame.width / 2
        self.menuApresentacaoView.roundCorners(corners: [.topLeft, .topRight], radius: 50.0)
        self.avaliacaoView.layer.cornerRadius = avaliacaoView.frame.height / 2
        self.primeiroAdicionarButton.layer.cornerRadius =
            primeiroAdicionarButton.frame.height / 2
        self.primeiroAdicionarButton.layer.borderWidth = 1
        self.primeiroAdicionarButton.layer.borderColor = UIColor(named: "VerdeClaro")?.cgColor
    }


}



