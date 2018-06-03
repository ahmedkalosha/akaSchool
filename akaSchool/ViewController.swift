//
//  ViewController.swift
//  akaSchool
//
//  Created by Ahmed on 5/28/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet var ageText: UITextField!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var subjectPikerView: UIPickerView!
    var subjectsFa = ["Math","Science","English","Arabic","Computer"]
    var selectSubjectsFa = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
     
        
    }
    @IBAction func saveButton(_ sender: UIButton) {
        
        if (nameText.text?.isEmpty)! || (ageText.text?.isEmpty)! {
            print ("inster your name and your age")
        }else {
            let dicSaveData = ["name":nameText.text!, "age" :ageText.text!, "favSubject" : selectSubjectsFa ]
            HandlerCoreData.SaveData(dic: dicSaveData)
            
        }
    
    }
    

    @IBAction func showButton(_ sender: Any) {
    }
}



extension ViewController : UIPickerViewDelegate , UIPickerViewDataSource {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return subjectsFa.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return subjectsFa[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectSubjectsFa = subjectsFa[row]
    }
    
    
}
