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
    @IBOutlet var contentImage: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        NSBundle(forClass: self.classForCoder).loadNibNamed("SoulmateNextLevel", owner: self, options: nil)
        self.addSubview(self.mainView)
    }
    
    func setAvatars(userImage: UIImage!, friendImage: UIImage!) {
        self.userAvatar.image = userImage
        self.friendAvatar.image = friendImage
    }
    
    func setBackgroundImageView(image: UIImage!) {
            self.backgroundImage.image = image
    }
    
    func setContentImageView(image: UIImage!) {
        self.contentImage.image = image
    }
}