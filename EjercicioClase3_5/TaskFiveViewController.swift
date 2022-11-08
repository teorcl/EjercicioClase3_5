//
//  TaskFiveViewController.swift
//  EjercicioClase3_5
//
//  Created by TEO on 8/11/22.
//

import UIKit

class TaskFiveViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var counter = 0
    let names = ["Luis","Gloria","David","Natalia","Rocky"]

    override func viewDidLoad() {
        super.viewDidLoad()
        showNames()
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        play()
    }
    
    func showNames(){
        nameLabel.text = "\(names[counter])"
    }
    
    func play(){
        showNames()
        changeCounter()
    }
    
    func changeCounter(){
        if(counter >= names.count-1){
            counter = 0
        }else{
            counter += 1
        }
    }
}

