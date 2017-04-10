//
//  ConfirmationViewController.swift
//  SignUpAssgn
//
//  Created by Sayem on 4/9/17.
//  Copyright © 2017 Sayem. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController {
    
    var i_name = ""
    var i_date = ""
    var i_address = ""
    var i_marital = ""
    var i_email = ""
    var i_phone = ""
    
    @IBAction func doneButton(_ sender: UIButton) {
    }
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var address: UITextView!
    @IBOutlet weak var marital: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var phone: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = i_name
        date.text = i_date
        address.text = i_address
        marital.text = i_marital
        email.text = i_email
        phone.text = i_phone

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
