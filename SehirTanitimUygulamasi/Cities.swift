//
//  Cities.swift
//  SehirTanitimUygulamasi
//
//  Created by Berkay Sancar on 8.04.2022.
//

import Foundation
import UIKit

class Cities {
    
    var name: String
    var explanation: UITextView
    var image: UIImage
    
    init(name: String, explanation: UITextView, image: UIImage){
       
        self.name = name
        self.image = image
        self.explanation = explanation
        
    }
    
    
}
