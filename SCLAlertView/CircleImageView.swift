//
//  CircleImageView.swift
//  Soul
//
//  Created by Andrew Skrypnik on 11/30/15.
//  Copyright © 2015 Concepter HQ, Inc. All rights reserved.
//

import Foundation
import UIKit

class CircleImageView : UIImageView {
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = CGRectGetHeight(self.frame)/2
        self.layer.masksToBounds = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = CGRectGetHeight(self.frame)/2
        self.layer.masksToBounds = true
    }
    
    override init(image: UIImage?) {
        super.init(image: image)
        self.layer.cornerRadius = CGRectGetHeight(self.frame)/2
        self.layer.masksToBounds = true
    }
}