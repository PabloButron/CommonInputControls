//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Pablo Butron on 2022-11-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
 

    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        
        let location = sender.location( in: view)
        print(location)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        print("The button was tapped")
        
        if toggle.isOn {
            print("the switch is On")
        } else {
            print("The switch is off")
        }
        print ("The switch is off")
        
    }
   
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print ("The Switch is On")
        } else{
            print ("The Switch is off")
        }
        
        
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    
   
    @IBAction func textFieldChanged(_ sender: UITextField) {
        
        if let text = sender.text {
            print(text)
        }
    }
    
}

