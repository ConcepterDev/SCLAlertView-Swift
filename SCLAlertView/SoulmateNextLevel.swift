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
    @IBOutlet weak var backgroundImage: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
//        self.mainView = UIView()
//        self.backgroundImage = UIImageView()
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    private func commonInit() {
        NSBundle(forClass: SoulmateNextLevel.self).loadNibNamed("SoulmateNextLevel", owner: self, options: nil)
        guard let content = mainView else { return }
        content.frame = self.bounds
        self.addSubview(content)
    }
 
    func setAvatarImage(image: UIImage!, profileImage: UIImageView!) {
        profileImage.image = image
//        
//        let currentBundle = NSBundle(forClass: SoulmateNextLevel.self)
//        let path = currentBundle.pathForResource("next_level_background", ofType: "png")
//        self.backgroundImage.image = UIImage(contentsOfFile: path!)
        
    }
    
    func setAvatars(userImage: UIImage!, friendImage: UIImage!) {
        self.setAvatarImage(userImage, profileImage: self.userAvatar)
        self.setAvatarImage(friendImage, profileImage: self.friendAvatar)
    }
}