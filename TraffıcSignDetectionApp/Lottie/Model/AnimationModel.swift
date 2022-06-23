//
//  AnimationModel.swift
//  TraffıcSignDetectionApp
//
//  Created by Kadır  Yıldız on 11.05.2022.
//

import Foundation

class AnimationModel {
    
    public var animationName: String = ""
    public var descriptionName: String = ""
    
    init(animationName: String = "", descriptionName: String = "") {
        self.animationName = animationName
        self.descriptionName = descriptionName
    }
}

