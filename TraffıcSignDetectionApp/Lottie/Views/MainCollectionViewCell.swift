//
//  MainCollectionViewCell.swift
//  TraffıcSignDetectionApp
//
//  Created by Kadır  Yıldız on 11.05.2022.
//


import Foundation
import UIKit
import Lottie

class MainCollectionViewCell : UICollectionViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    //MARK: Outlets
    @IBOutlet weak var animationView: AnimationView!
    
    //MARK: Properties
    
    override func awakeFromNib() {
        super .awakeFromNib()
        
    }
    func prepareCell(item: AnimationModel) {
        self.descriptionLabel.text = item.descriptionName
        let path = Bundle.main.path(forResource: item.animationName,
                                    ofType: "json") ?? ""
        animationView.animation = Animation.filepath(path)
        animationView.backgroundColor = .white
        animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFit
        animationView.leftAnchor.constraint(equalTo: animationView.leftAnchor).isActive = true
        animationView.rightAnchor.constraint(equalTo: animationView.rightAnchor).isActive = true
        animationView.topAnchor.constraint(equalTo: animationView.topAnchor).isActive = true
        animationView.bottomAnchor.constraint(equalTo: animationView.bottomAnchor).isActive = true
        animationView.play()
        
        
    }
}

