//
//  ViewController.swift
//  First week: Grade calculator
//
//  Created by Nienke Pot on 29-10-15.
//  Copyright © 2015 Nienke Pot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate{
    
    // options for the pickerview
    var subjects = ["Math","English","History"]
    @IBOutlet weak var Headerlabel: UILabel!
    
    //calculating the grade.
    @IBOutlet weak var homeworkgrade: UITextField!
    
    @IBOutlet weak var examgrade: UITextField!
    
    @IBOutlet weak var gradelabel: UILabel!
    
    @IBAction func calculatebutton(sender: UIButton) {
        
        let gradeHW:Float? = Float(homeworkgrade.text!)
        let gradeEX:Float? = Float(examgrade.text!)
        let Finalgrade = (((gradeHW!*2)+(gradeEX!*8))/10)
        
        if Finalgrade < 5.5{
            
            gradelabel.text = "Your grade is insufficient: \(Finalgrade)"
            gradelabel.textColor = UIColor.redColor()
        }
            
        else{
            
            gradelabel.text = "Your grade is sufficient: \(Finalgrade)"
            gradelabel.textColor = UIColor.greenColor()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         gradelabel.textColor = UIColor.blackColor()
        
        
        
        //pickerview for the subjects
           }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return subjects.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        Headerlabel.text = "Grade calculator for: \(subjects[row])"
        return subjects[row]
        
    }

}

