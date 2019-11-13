//
//  AddStudents.swift
//  Harmanpreet_C0765590_gpaApp
//
//  Created by MacStudent on 2019-11-12.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddStudents: UIViewController {

    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    func showAlert(_ title: String, _ msg: String){
        var alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        var okAction = UIAlertAction(title: "OK", style: .cancel)
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
