//
//  ViewController.swift
//  MentorBook
//
//  Created by 春田実利 on 2022/08/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var mentorArray: [Mentor] = []
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Untiy"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "webS,webD"))
        
        setUI()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mae(){
        index = index - 1
        setUI()
        
    }
    
    @IBAction func tugi(){
        index = index + 1
        setUI()
        
    }
    
    func setUI(){
        indexRange()
        
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
        
    }
    
    func indexRange(){
        if index >= 3 {
            index = 0
        } else if index <= -1 {
            index = 2
        }
    }


}

