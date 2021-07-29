//
//  ThemeViewController.swift
//  DarkLightTheme
//
//  Created by Martina Baltkalne on 29.07.21.
//

import UIKit

class ThemeViewController: UIViewController {
    
    @IBOutlet weak var darkButtonOutlet: UIButton!
    var isOn = false
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ThemeViewController")
        
    }
    
    
    @IBAction func darkButtonTapped(_ sender: Any) {
        if isOn{
            print("Dark Theme off")
            self.isOn = false
            self.darkButtonOutlet.setTitle("Dark Theme on", for: .normal)
            self.darkButtonOutlet.setTitleColor(UIColor.white, for: .normal)
            self.view.backgroundColor = .black
        }else{
            print("Dark Theme on")
            self.isOn = true
            self.darkButtonOutlet.setTitle("Dark Theme off", for: .normal)
            self.darkButtonOutlet.setTitleColor(UIColor.black, for: .normal)
            self.view.backgroundColor = .white
        }
    }
}

