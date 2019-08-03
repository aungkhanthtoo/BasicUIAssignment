//
//  ViewController.swift
//  BasicUIAssignment
//
//  Created by Htoo Aung Kyaw on 8/3/19.
//  Copyright © 2019 Htoo Aung Kyaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfDOB: UITextField!
    
    private var selectedGender: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupDatePicker()
    }
    
    @IBAction func btnRegister(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let profileViewController = storyboard.instantiateViewController(withIdentifier: ProfileViewController.identifier) as!
        ProfileViewController
        
        profileViewController.gender = selectedGender
        profileViewController.dob = tfDOB.text ?? ""
        
        self.present(profileViewController, animated: true, completion: nil)
    }
    

    @IBAction func scGender(_ sender: UISegmentedControl) {
        selectedGender = sender.selectedSegmentIndex
    }
    
    private func setupDatePicker(){
        let dialog = UIDatePicker()
        dialog.datePickerMode = .date
        dialog.addTarget(self, action: #selector(selectDate(picker:)), for: .valueChanged)
        
        tfDOB.inputView = dialog
    }
    
    @objc func selectDate(picker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        tfDOB.text = dateFormatter.string(from: picker.date)
        
        view.endEditing(true)
    }
    
}

