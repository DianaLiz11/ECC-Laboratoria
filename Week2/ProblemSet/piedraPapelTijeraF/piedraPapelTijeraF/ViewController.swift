//
//  ViewController.swift
//  piedraPapelTijeraF
//
//  Created by Apple Device 12 on 10/5/19.
//  Copyright © 2019 Diana Arana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myBack: UIView!
    @IBOutlet weak var robot: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.isHidden = true
    }

    @IBAction func rockButton(_ sender: UIButton) {
        let computer = randomSign()
        let rock = Sign.rock
        
        let result = rock.compare(computer: computer)
        
        deternitateAppState(result: result)
        resultLabel.isHidden = false
        resultLabel.text = "\(result)"
        robot.text = "\(computer.option)"
        print(computer.option)
        print("El resultado es \(result)")
    }
    
    @IBAction func paperScissor(_ sender: UIButton) {
        let computer = randomSign()
        let paper = Sign.paper
        
        let result = paper.compare(computer: computer)
        
        deternitateAppState(result: result)
        resultLabel.isHidden = false
        resultLabel.text = "\(result)"
        robot.text = "\(computer.option)"
        print(computer.option)
        print("El resultado es \(result)")
    }
    
    @IBAction func scissorButton(_ sender: UIButton) {
        let computer = randomSign()
        let scissors = Sign.scissors
        
        let result = scissors.compare(computer: computer)
        
        deternitateAppState(result: result)
        resultLabel.isHidden = false
        resultLabel.text = "\(result)"
        robot.text = "\(computer.option)"
        print(computer.option)
        print("El resultado es \(result)")
    }
    
    @IBAction func againButton(_ sender: UIButton) {
        robot.text = "🤖"
        resultLabel.text = ""
        myBack.backgroundColor = UIColor(red: 252 / 255.0, green: 243 / 255.0, blue: 207 / 255.0, alpha: 1)
    }
    func deternitateAppState(result: GameState) {
        switch result {
        case .win:
            myBack.backgroundColor = .green
        case .lose:
            myBack.backgroundColor = .red
        default:
            myBack.backgroundColor = .yellow
        }
    }
    
}
