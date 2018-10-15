//
//  ParallaxCell.swift
//  Listy
//
//  Created by Horvath, Mate on 2018. 10. 15..
//  Copyright © 2018. Finastra. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {
    
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var title: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setupParallax()
    }
    
    func configureWith(withImage image: UIImage, title: String)
    {
        imageBackground.image = image
        self.title.text = title
    }

    func setupParallax() {
        let min: CGFloat = -30
        let max: CGFloat = 30
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x",
                                                  type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y",
                                                  type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        imageBackground.addMotionEffect(motionEffectGroup)
    }
}
