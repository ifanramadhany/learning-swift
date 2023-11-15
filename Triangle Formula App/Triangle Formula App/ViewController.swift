//
//  ViewController.swift
//  Triangle Formula App
//
//  Created by Ifan Ramadhany on 15/11/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textResult: UILabel!
    
    @IBOutlet weak var textBaseInput: UITextField!
    
    @IBOutlet weak var textHeightInput: UITextField!
    
    @IBAction func countButton(_ sender: UIButton) {
        let base = Float(textBaseInput.text!)
        let height = Float(textHeightInput.text!)
        let result = round(0.5 * (base ?? 0) * (height ?? 0))
        
        textResult.text = Double(String(result))?.removeZerosFromEnd()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension Double {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 16 //maximum digits in Double after dot (maximum precision)
        return String(formatter.string(from: number) ?? "")
    }
}

