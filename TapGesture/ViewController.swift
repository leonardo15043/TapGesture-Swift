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
    var snapBehaviour:UISnapBehavior!
    
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
        
        let touchPoint = tap.location(in: self.view)
        if snapBehaviour != nil {
            animator.removeBehavior(snapBehaviour)
        }
        
        snapBehaviour = UISnapBehavior(item: imageView, snapTo: touchPoint)
        snapBehaviour.damping = 0.3
        animator.addBehavior(snapBehaviour)
       
    }


}

