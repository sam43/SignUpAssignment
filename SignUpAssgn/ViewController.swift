//
//  ViewController.swift
//  SignUpAssgn
//
//  Created by Sayem on 4/9/17.
//  Copyright © 2017 Sayem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var maritalField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var dobLabel: UILabel!

    @IBAction func selectDateButton(_ sender: UIDatePicker) {
        
    }
    
    @IBAction func submitButton(_ sender: Any) {
        let confirmController = storyboard?.instantiateViewController(withIdentifier: "confirm") as! ConfirmationViewController
        confirmController.i_name = nameField.text!
        confirmController.i_address = addressField.text!
        confirmController.i_marital = maritalField.text!
        confirmController.i_email = emailField.text!
        confirmController.i_phone = phoneField.text!
        
        self.navigationController?.pushViewController(confirmController, animated: true)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func resignFirstResponder() -> Bool {
        nameField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func passDOB(segue:UIStoryboardSegue){
        //dobFormatter.dateStyle = DateFormatter.Style.short
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let dob = sender as! UIDatePicker

        //add navigation controller instance first
        //let destinationController = segue.destination as! ViewController
        //destinationController.dobLabel.text = dobSelected
    }

}

