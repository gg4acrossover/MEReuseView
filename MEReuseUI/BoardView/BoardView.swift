//
//  BoardView.swift
//  MEReuseUI
//
//  Created by viethq on 11/20/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

class BoardView: UIView {
    // MARK: Public
    static let kLeft = "LeftBoard"
    static let kRight = "RightBoard"
    
    var name: String? {
        get { return self.nameLabel?.text }
        set { self.nameLabel?.text = newValue }
    }
    
    var age: String? {
        get { return self.ageLabel?.text }
        set { self.ageLabel?.text = newValue }
    }
    
    // set this value will add xib with the same name to body
    @IBInspectable var nibByString: String = kLeft {
        didSet {
            self.commonInit()
        }
    }
    
    // this init will be trigged if create view from UI file
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    // MARK: Private
    @IBOutlet private weak var nameLabel: UILabel?
    @IBOutlet private weak var ageLabel: UILabel?
    @IBOutlet private weak var avatarImage: UIImageView?
    @IBOutlet private weak var container: UIView!
    
    private func addContainer() {
        Bundle.main.loadNibNamed(self.nibByString, owner: self, options: nil)
        self.addSubview(self.container)
        
        self.container.translatesAutoresizingMaskIntoConstraints = false
        self.container.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.container.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.container.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.container.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    private func roundCornerView() {
        do {
            self.layer.cornerRadius = 8.0
            self.layer.masksToBounds = true
        }
 
        // make sure avatar is circular
        do {
            self.setNeedsLayout()
            self.layoutIfNeeded()
            self.avatarImage?.layer.cornerRadius = self.avatarImage!.bounds.width*0.5
            self.avatarImage?.layer.masksToBounds = true
        }
    }
    
    private func commonInit() {
        //1. need removing all subviews first
        _ = self.subviews.map{ $0.removeFromSuperview() }
        //2.
        self.addContainer()
        //3.
        self.roundCornerView()
    }
}
