//
//  ViewController.swift
//  TapGesture
//
//  Created by leonardo hernandez on 12/24/18.
//  Copyright © 2018 leonardo hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var animator:UIDynamicAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creamos el gesto del tab
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userTap))
        //asignamos el gesto a la vista
        self.view.addGestureRecognizer(tapGesture)
        
        //creamos la animacion
        animator = UIDynamicAnimator(referenceView: self.view)
    }
    
    @objc func userTap(tap:UITapGestureRecognizer){
       
    }


}

