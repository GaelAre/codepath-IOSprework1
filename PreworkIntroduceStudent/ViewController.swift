//
//  ViewController.swift
//  PreworkIntroduceStudent
//
//  Created by Gael Arellano on 1/16/23.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    @IBOutlet weak var AgeStepperLabel: UILabel!
    @IBOutlet weak var numberofPetsLabel: UILabel!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var semesterSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func StepperChangeAction(_ sender: UIStepper)
    {
        numberofPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func AgeStepperAction(_ sender: UIStepper)
    {
        AgeStepperLabel.text = "\(Int(sender.value))"
    }
    @IBAction func IntroSelfButtonAction(_ sender: Any)
    {
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        
        let semester = semesterSegmentControl.titleForSegment(at: semesterSegmentControl.selectedSegmentIndex)
        
        let introduction = "Hello! My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!). I am currently in the \(semester!) semester of my \(year!) year, I'm \(AgeStepperLabel.text!) years old, and I own \(numberofPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets. I would love to further my coding abilites!" 
                
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

}

