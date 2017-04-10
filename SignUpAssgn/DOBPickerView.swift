//
//  DOBPickerView.swift
//  SignUpAssgn
//
//  Created by Sayem on 4/9/17.
//  Copyright © 2017 Sayem. All rights reserved.
//

import UIKit

class DOBPickerView: UIViewController {
    
    let dobFormatter = DateFormatter()
    var dobSelected:String?
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func dobController(_ sender: UIDatePicker) {
        dobFormatter.dateStyle = DateFormatter.Style.short
        datePickerLabel.text = dobFormatter.string(from: sender.date)    }
    @IBOutlet weak var datePickerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
//        
//        let cell = sender as! UITableViewCell
//        let destnController = segue.destination as! ViewController
//        let indexpath = tableView.indexPath(for: cell)
//        let selectedString = self.daysArray[(indexpath?.row)!]
//        
//        destnController.labelOutlet.text = selectedString
        
        //let dob = sender as! UIDatePicker
        let destinationController = segue.destination as! ViewController
        destinationController.dobLabel.text = dobSelected
        
        
    }
    
    

}
