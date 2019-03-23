//
//  ViewController.swift
//  FlashlightApp
//
//  Created by Blair Holmgren on 3/22/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImageView = UIImageView()

    @IBOutlet weak var helloWorldButton: UIButton!
    
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()

        helloWorldButton.setTitle("Flashlight", for: .normal)
    }
    
    func setBackground() {
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "bg")
    }

    @IBAction func flashLightButtonTapped(_ sender: Any) {
        view.backgroundColor = .blue
    }
    
    @IBAction func redButtonTapped(_ sender: Any) {
        view.backgroundColor = .red
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {view.backgroundColor = .green
    }
}

