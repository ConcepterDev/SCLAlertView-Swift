//
//  SoulmateNextLevel.swift
//  Soul
//
//  Created by Sergey Mikhalchenko on 16.02.16.
//  Copyright © 2016 Concepter HQ, Inc. All rights reserved.
//

import Foundation
import UIKit

class SoulmateNextLevel: UIView {
    
    @IBOutlet var mainView: UIView!
    @IBOutlet var userAvatar: CircleImageView!
    @IBOutlet var friendAvatar: CircleImageView!
    @IBOutlet var backgroundImage: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        NSBundle(forClass: self.classForCoder).loadNibNamed("SoulmateNextLevel", owner: self, options: nil)
        self.addSubview(self.mainView)
        
        let image = UIImage(named: "next_level_background", inBundle: NSBundle(forClass: self.classForCoder), compatibleWithTraitCollection: nil)
        self.backgroundImage.image = image
    }
    
    func setAvatars(userImage: UIImage!, friendImage: UIImage!) {
        self.userAvatar.image = userImage
        self.friendAvatar.image = friendImage
    }
}