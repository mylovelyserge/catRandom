//
//  ViewController.swift
//  CatRandom
//
//  Created by Sergei Biryukov on 01.11.2024.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var genButton: UIButton!
    @IBOutlet weak var genImage: UIImageView!
    
    let catImages = ["cat1", "cat2", "cat3", "cat4", "cat5"]
    var currentCatIndex = 0
    
    @IBAction func generateAction(_ sender: Any) {
        changeCatImage()
    }
    
    func changeCatImage() {
        
        currentCatIndex = (currentCatIndex + 1) % catImages.count
        let imageName = catImages[currentCatIndex]
        
        genImage.image = UIImage(named: imageName)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let firstImageName = catImages.first {
            genImage.image = UIImage(named: firstImageName)
        }
    }
}

