//
//  AvatarView.swift
//  MEReuseUI
//
//  Created by viethq on 11/23/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

class AvatarView: UIView {
    // step 1: add property contentView
    @IBOutlet private weak var contentView: UIView!
    
    // step 2: init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    // step 3:
    private func commonInit() {
        // load nib first
        Bundle.main.loadNibNamed(String(describing: AvatarView.self), owner: self, options: nil)
        
        // add view from nib
        self.addSubview(self.contentView)
        
        // add constraints
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
}
