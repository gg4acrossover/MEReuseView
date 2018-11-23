//
//  CompositionBoard.swift
//  MEReuseUI
//
//  Created by viethq on 11/20/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

class CompositionBoard: UIView {
    //MARK: Public
    var left: BoardView? {
        return self.leftView
    }
    
    var right: BoardView? {
        return self.rightView
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    //MARK: Private
    @IBOutlet private weak var leftView: BoardView?
    @IBOutlet private weak var rightView: BoardView?
    private var container: UIView!
    
    private func addContainer() {
        guard let view = Bundle.main.loadNibNamed("CompositionBoard", owner: self, options: nil)?.first as? UIView else {
            fatalError()
        }
        
        self.container = view
        self.addSubview(self.container)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    private func roundCornerView() {
        self.layer.cornerRadius = 8.0
        self.layer.masksToBounds = true
    }
    
    private func commonInit() {
        //1.
        self.addContainer()
        //2.
        self.roundCornerView()
    }
}
