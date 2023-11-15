//
//  ViewController.swift
//  Learning Auto Layout
//
//  Created by Ifan Ramadhany on 14/11/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewBlue: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewBlue.roundedBottom()
    }

}

extension UIView {
    func roundedBottom(){
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.bottomRight, .bottomLeft], cornerRadii: CGSize(width: 15, height: 15))
        
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath.cgPath
        layer.mask = maskLayer1
    }
}

