//
//  OperatingSystemsViewController.swift
//  Homework 1
//
//  Created by Turing on 9/19/23.
//

import UIKit
import SPConfetti
class OperatingSystemsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


  
    @IBOutlet weak var lblGradePercentageOS: UILabel!
    
    
    
    @IBOutlet weak var lblLetterGradeOS: UILabel!
    
    

    @IBOutlet weak var sldrHomeworkValue: UISlider!
    
    @IBOutlet weak var sldrFinalProjectValue: UISlider!
    
    @IBOutlet weak var sldrFinalExamValue: UISlider!
    
    @IBOutlet weak var sldrExamsValue: UISlider!
    
    @IBOutlet weak var sldrParticipationValue: UISlider!
    
    func confetti(grade : Int)
    {
        if(grade == 100)
        {
            SPConfetti.startAnimating(.centerWidthToDown, particles: [.triangle, .arc], duration: 3)
        }
    }
    
    
    //calculate grade and determines letter grade
    func calculateGrade()
    {
        //assigning slider values to variables
        let homework = sldrHomeworkValue.value * 20
        
        let finalProject = sldrFinalProjectValue.value * 25
        
        let finalExam = sldrFinalExamValue.value * 25
        
        let exams = sldrExamsValue.value * 20
        
        let particpation = sldrParticipationValue.value * 10
        
        //calculating grade percentage
        let grade = homework + finalProject + finalExam + exams + particpation
        
        //inputting new grade value into the grade percentage label
        lblGradePercentageOS.text = "\(Int(grade))%"
        
        //determining letter grade based on grade percentage
        if(grade >= 90)
        {
            lblLetterGradeOS.text = "A"
        }else if(grade >= 80)
        {
            lblLetterGradeOS.text = "B"
        }else if(grade >= 70)
        {
            lblLetterGradeOS.text = "C"
        }else if(grade >= 60)
        {
            lblLetterGradeOS.text = "D"
        }else
        {
            lblLetterGradeOS.text = "F"
        }
        
        confetti(grade: Int(grade))
    }
    
    @IBAction func sldrHomeworkAction(_ sender: UISlider) {
        calculateGrade()
    }
    
    @IBAction func sldrFinalProjectAction(_ sender: UISlider) {
        calculateGrade()
    }
    
    @IBAction func sldrFinalExamAction(_ sender: UISlider) {
        calculateGrade()
    }
    
    @IBAction func sldrExamsAction(_ sender: UISlider) {
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
