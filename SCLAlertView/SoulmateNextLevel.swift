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
    @IBOutlet weak var userAvatar: CircleImageView!
    @IBOutlet weak var friendAvatar: CircleImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    private func commonInit() {
        NSBundle.mainBundle().loadNibNamed("SoulmateNextLevel", owner: self, options: nil)
        guard let content = mainView else { return }
        content.frame = self.bounds
        self.addSubview(content)
    }
 
    func setAvatarImage(image: UIImage!, profileImage: UIImageView!) {
        profileImage.image = image
    }
    
    func setAvatars(userImage: UIImage!, friendImage: UIImage!) {
        self.setAvatarImage(userImage, profileImage: self.userAvatar)
        self.setAvatarImage(friendImage, profileImage: self.friendAvatar)
    }
}