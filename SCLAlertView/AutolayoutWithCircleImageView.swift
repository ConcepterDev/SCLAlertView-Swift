//
//  AutolayoutCircleImageView.swift
//  Soul
//
//  Created by Sergey Mikhalchenko on 28.12.15.
//  Copyright © 2015 Concepter HQ, Inc. All rights reserved.
//

import Foundation
import UIKit


class AutolayoutWithCircleImageView: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let radius: CGFloat = self.bounds.size.width/2.0
        
        self.layer.cornerRadius = radius
    }
    
}