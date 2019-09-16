//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Amal Agrawal on 9/16/19.
//  Copyright © 2019 Amal Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Mark: Properties
    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // Mark: Functions
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + shrinkValue , y: self.imageToPunch.bounds.origin.y + shrinkValue, width: self.imageToPunch.bounds.width - shrinkValue, height: self.imageToPunch.bounds.height - shrinkValue )
        UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds}, completion: nil)
    }
    
    
    // Mark: Actions
    
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
    
    }
}

