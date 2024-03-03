//
//  HistoryAndPhilViewController.swift
//  Homework 1
//
//  Created by Turing on 9/19/23.
//

import UIKit
import SPConfetti

class HistoryAndPhilViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //initializing outlets
    @IBOutlet weak var lblGradePercentageHPS: UILabel!
    
    @IBOutlet weak var lblLetterGradeHPS: UILabel!
    
    @IBOutlet weak var sldrHomeworkValue: UISlider!
    
    @IBOutlet weak var sldrClassworkValue: UISlider!
    
    @IBOutlet weak var sldrExamsValue: UISlider!
    
    @IBOutlet weak var sldrPresenationsValue: UISlider!
    
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
        //initializing grade variables
        let homework = sldrHomeworkValue.value * 25
        
        let classwork = sldrClassworkValue.value * 40
        
        let exams = sldrExamsValue.value * 20
        
        let presentations = sldrPresenationsValue.value * 10
        
        let participation = sldrParticipationValue.value * 5
        
        //calculating grade percentage
        let grade = homework + classwork + exams + presentations + participation
        
        //assigning grade value to grade percentage label
        lblGradePercentageHPS.text = "\(Int(grade))%"
        
        //determining letter grade based on grade percentage
        if(grade >= 90)
        {
            lblLetterGradeHPS.text = "A"
        }else if(grade >= 80)
        {
            lblLetterGradeHPS.text = "B"
        }else if(grade >= 70)
        {
            lblLetterGradeHPS.text = "C"
        }else if(grade >= 60)
        {
            lblLetterGradeHPS.text = "D"
        }else
        {
            lblLetterGradeHPS.text = "F"
        }
        
        confetti(grade: Int(grade))
    }
    
    //initializing actions and running calculateGrade()
    @IBAction func sldrHomeworkAction(_ sender: UISlider) {
        calculateGrade()
    }
    
    
    @IBAction func sldrClassworkAction(_ sender: UISlider) {
        calculateGrade()
    }
    
    @IBAction func sldrExamsAction(_ sender: UISlider) {
        calculateGrade()
    }
    
    @IBAction func sldrPresentationsAction(_ sender: UISlider) {
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
