//
//  ViewController.swift
//  app-swoosh
//
//  Created by MacBook Pro on 01/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width/2,
                              y: 50,
                              width: swoosh.frame.size.width ,
                              height: swoosh.frame.size.height)
    }

    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }

}

