//
//  mobilProgrammingViewController.swift
//  Homework 1
//
//  Created by Turing on 9/19/23.
//

import UIKit
import SPConfetti

class mobilProgrammingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SPConfetti.startAnimating(.centerWidthToDown, particles: [.triangle, .arc])

        // Do any additional setup after loading the view.
    }
    //declaring outlets
    @IBOutlet weak var lblGradePercentage: UILabel!
    
    @IBOutlet weak var lblLetterGrade: UILabel!
    
    @IBOutlet weak var sldrHomeworkValue: UISlider!
    
    @IBOutlet weak var sldrPrototypeValue: UISlider!
    
    @IBOutlet weak var sldrIpplValue: UISlider!
    
    @IBOutlet weak var sldrPresentationValue: UISlider!
    
    @IBOutlet weak var sldrParticipationValue: UISlider!
    
    func confetti(grade : Int)
    {
        if(grade == 100)
        {
            SPConfetti.startAnimating(.centerWidthToDown, particles: [.triangle, .arc], duration: 3)
        }
    }
    
    //calculates grade and determines letter grade
    func calculateGrade()
    {
        //gets value from sliders
        let homework = (sldrHomeworkValue.value * 60)
        
        let prototype = (sldrPrototypeValue.value * 10)
        
        let ippl = (sldrIpplValue.value * 15)
        
        let presentation = (sldrPresentationValue.value * 5)
        
        let participation = (sldrParticipationValue.value * 10)
        
        //calculating grade
        let grade = homework + prototype + ippl + presentation + participation
        
        //inputting new grade value into the grade percentage label
        lblGradePercentage.text = "\(Int(grade))%"
        
        //determining letter grade based on grade percentage
        if(grade >= 90)
        {
            lblLetterGrade.text = "A"
        }else if(grade >= 80)
        {
            lblLetterGrade.text = "B"
        }else if(grade >= 70)
        {
            lblLetterGrade.text = "C"
        }else if(grade >= 60)
        {
            lblLetterGrade.text = "D"
        }else
        {
            lblLetterGrade.text = "F"
        }
        
        confetti(grade: Int(grade))
    }
    
    //declaring actions using the calculateGrade() function
    @IBAction func sldrHomeworkAction(_ sender: UISlider) {
        
        calculateGrade()
    }
    
    @IBAction func sldrPrototypeAction(_ sender: UISlider) {
        calculateGrade()
    }
    
    
    @IBAction func sldrIpplAction(_ sender: UISlider) {
        calculateGrade()
    }
    
    @IBAction func sldrPresentationAction(_ sender: UISlider) {
        calculateGrade()
    }
    
    @IBAction func sldrParticipationAction(_ sender: UISlider) {
        calculateGrade()
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
