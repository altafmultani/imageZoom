//
//  EditorViewController.swift
//  imageZoom
//
//  Created by helpmac on 06/10/20.
//  Copyright © 2020 helpmac. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var stackView2: UIStackView!
    
    @IBOutlet weak var stackView1: UIStackView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var viuew4: UIView!
    @IBOutlet weak var mainView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
     
        // Do any additional setup after loading the view.
    }
    

    @IBAction func sliderChangehandler(_ sender: Any) {
        self.mainStackView.spacing = CGFloat(sliderValue.value)
        
        self.stackView1.spacing = CGFloat(sliderValue.value)
        self.stackView2.spacing = CGFloat(sliderValue.value)
        round()
    }
    
    
    func round(){
        view1.clipsToBounds = true
        view1.layer.cornerRadius = CGFloat(sliderValue.value)
        view2.clipsToBounds = true
        view2.layer.cornerRadius = CGFloat(sliderValue.value)
        
        view3.clipsToBounds = true
        view3.layer.cornerRadius = CGFloat(sliderValue.value)
        
        viuew4.clipsToBounds = true
        viuew4.layer.cornerRadius = CGFloat(sliderValue.value)
    }
    
    
}
