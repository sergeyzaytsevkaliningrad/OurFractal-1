//
//  ViewController.swift
//  OurFractal
//
//  Created by Сергей Зайцев on 15.11.2021.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var wellcome: UILabel!
    @IBOutlet var userName: UITextField!
    @IBOutlet var emailAddress: UITextField!
    @IBOutlet var passwordUser: UITextField!
    @IBOutlet var switchLogin: UIButton!
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
