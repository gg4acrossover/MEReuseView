//
//  ViewController.swift
//  MEReuseUI
//
//  Created by viethq on 11/20/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var leftBoard: BoardView! {
        return self.compositionBoard.left!
    }
    
    var rightBoard: BoardView! {
        return self.compositionBoard.right!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.board.name = "Yumi"
        self.board.age = "20"
        
        self.leftBoard.name = "suzuki"
        self.leftBoard.age = "100"
        
        self.rightBoard.name = "amaterasu"
        self.rightBoard.age = "100.000"
    }

    // Private
    @IBOutlet private weak var board: BoardView!
    @IBOutlet private weak var compositionBoard: CompositionBoard!
}

