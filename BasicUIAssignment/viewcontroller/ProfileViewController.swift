//
//  ProfileViewController.swift
//  BasicUIAssignment
//
//  Created by Htoo Aung Kyaw on 8/3/19.
//  Copyright © 2019 Htoo Aung Kyaw. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    static let identifier = "ProfileViewController"

    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblDOB: UILabel!
    
    var gender = -1
    var dob = "dob here"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblDOB.text = dob
        lblGender.text = getGenderName()
        
        // Do any additional setup after loading the view.
    }
    
    private func getGenderName() -> String {
        let genderName: String
        switch gender{
        case 0:
            genderName = "Male"
            break
        case 1:
            genderName = "Female"
            break
        default:
            genderName = "gender here"
        }
        return genderName
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
