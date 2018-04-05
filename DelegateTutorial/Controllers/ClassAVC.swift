//
//  ViewController.swift
//  DelegateTutorial
//
//  Created by James Rochabrun on 2/7/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

//MARK: step 4 conform the protocol here
class ClassAVC: UIViewController, ClassBVCDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func delegateAction(_ sender: Any) {
        //let storyboard = UIStoryboard(name: "Main",bundle:nil)
        let classBCV = self.storyboard?.instantiateViewController(withIdentifier: "ClassBVC") as! ClassBVC
        classBCV.delegate = self
        
        let nav = UINavigationController(rootViewController: classBCV)
        self.present(nav, animated: true, completion: nil)
        
    }
    
    

    
    //MARK: step 6 finally use the method of the contract
    func changeBackgroundColor(_ color: UIColor?) {
        view.backgroundColor = color
    }

    
    
    
}
