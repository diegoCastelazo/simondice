//
//  ViewController.swift
//  SimonDice
//
//  Created by diego castelazo on 13/02/18.
//  Copyright © 2018 diego castelazo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    
    var reds: [CGFloat] = [0,1,0,1,0,1];
    var greens: [CGFloat] = [0,0,1,1,0,0,1,1];
    var blues: [CGFloat] = [0,0,0,0,1,1,1,1];
    var sequence: [Int] = [Int]();
    var sequenceUser: [Int] = [Int]();
    
    var currentlyOn: Bool = false;
    var position: Int = 0;
    let turnOnSeconds: Double = 0.4;
    let turnOffSeconds: Double = 0.6;
    
    var buttons: [FredButton] = [FredButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        initializeColor();
        
        for _ in 1...5
        {
            let n = Int(arc4random_uniform(5)) + 1;
            sequence.append(n);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playSequence(){
        position = 0;
        currentlyOn = false;
        sequenceUser.removeAll();
        for number in sequence
        {
            sequenceUser.append(number);
        }
        playSequencePart();
    }
    
    func playSequencePart(){
        if(position >= self.sequence.count){
            return;
        }
        if(!currentlyOn){
            self.buttons[sequence[position] - 1].highLightButton();
            currentlyOn = true;
            _ = Timer.scheduledTimer(withTimeInterval: TimeInterval(turnOnSeconds), repeats: false)
                {(timer) in self.playSequencePart()
                    
            };
        }
        else{
            currentlyOn = false;
            self.buttons[sequence[position] - 1].deLightButton();
            position = position + 1;
            _ = Timer.scheduledTimer(withTimeInterval: TimeInterval(turnOffSeconds), repeats: false)
            {(timer) in self.playSequencePart()
                
            };
        }
    }

    func initializeColor(){
        
        var uiButtons: [UIButton] = [buttonOne, buttonTwo, buttonThree, buttonFour, buttonFive, buttonSix];
        
        for i in 0..<uiButtons.count{
            let fredButton: FredButton? = FredButton(red: reds[i], green: greens[i], blue: blues[i], button: uiButtons[i]);
            
            if(fredButton != nil){
                self.buttons.append(fredButton!);
            }
            else{
                print("Fallo el boton \(i).")
            }
        }
    }
    
    func comparar(numero: Int)
    {
        var primero = sequenceUser.removeFirst();
        if(primero != numero)
        {
            self.showAlertButtonLose();
            return;
        }
        if(sequenceUser.count < 1)
        {
            self.addNumber();
            self.playSequence();
        }
    }
    
    func showAlertButtonLose() {
        
        // create the alert
        let alert = UIAlertController(title: "Perdiste", message: "Lo siento la secuencia es incorrecta.", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil));
        
        // show the alert
        self.present(alert, animated: true, completion: nil);
        
        sequence.removeAll();
        for _ in 1...5
        {
            let n = Int(arc4random_uniform(5)) + 1;
            sequence.append(n);
        }
        
    }
    
    func addNumber()
    {
        let n = Int(arc4random_uniform(5)) + 1;
        sequence.append(n);
        self.playSequence();
    }

    
    @IBAction func play(_ sender: Any) {
        
        self.playSequence();
        
    }
    @IBAction func clickButtonSix(_ sender: Any) {
        if(sequenceUser.count > 0)
        {
            self.comparar(numero: 6);
        }
        else
        {
            self.addNumber();
        }
        
    }
    @IBAction func clickButtonFive(_ sender: Any) {
        if(sequenceUser.count > 0)
        {
            self.comparar(numero: 5);
        }
        else
        {
            self.addNumber();
        }
    }
    @IBAction func clickButtonFour(_ sender: Any) {
        if(sequenceUser.count > 0)
        {
            self.comparar(numero: 4);
        }
        else
        {
            self.addNumber();
        }
    }
    @IBAction func clickButtonThree(_ sender: Any) {
        if(sequenceUser.count > 0)
        {
            self.comparar(numero: 3);
        }
        else
        {
            self.addNumber();
        }
    }
    @IBAction func clickButtonTwo(_ sender: Any) {
        if(sequenceUser.count > 0)
        {
            self.comparar(numero: 2);
        }
        else
        {
            self.addNumber();
        }
    }
    @IBAction func clickButtonOne(_ sender: Any) {
        if(sequenceUser.count > 0)
        {
            self.comparar(numero: 1);
        }
        else
        {
            self.addNumber();
        }
    }
}

