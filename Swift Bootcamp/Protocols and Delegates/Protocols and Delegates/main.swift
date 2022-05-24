//
//  main.swift
//  Protocols and Delegates
//
//  Created by David Pittman on 5/24/22.
//

import Foundation

protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation(){
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
}


struct Paramedic: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic performs chest compressions, 100 per minute.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    
    func performCPR() {
        print("Doctor does chest compressions, 100 per minute.")
    }
    
    func useStethescope(){
        print("Listening for heart sounds.")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("He might need surgery too!")
    }
}

let john = EmergencyCallHandler()
let bill = Surgeon(handler: john)


john.assessSituation()
john.medicalEmergency()

