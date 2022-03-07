//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kseniya Ignatyeva on 06.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        //greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }


//    @IBAction func greetingButtonPressed() {
//        greetingLabel.isHidden.toggle()
//        greetingButton.setTitle(
//            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
//            for: .normal
//        )
//
//    }
    
    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
                                                    with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}

