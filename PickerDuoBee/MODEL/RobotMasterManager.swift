//
//  RobotMasterManager.swift
//  PickerDuoBee
//
//  Created by yannemal on 14/04/2023.
//

import Foundation

// MARK: - protocol
protocol RobotMasterDelegate {
    func didUpdateRobotMasterData(handler robotMasterManager: RobotMasterManager, message robotMasterData: String )
    // func didFailWithError(error: Error)
}


// MARK: - BOSS
struct RobotMasterManager {
    // data for the Picker datasource to use
                                     
    let robotMasters = [RM.cutman, RM.elecman, RM.fireman, RM.gutsman, RM.iceman, RM.bombman,
                        RM.bubbleman, RM.airman, RM.quickman, RM.heatman, RM.woodman, RM.metalman, RM.flashman, RM.crashman,
                        RM.sparkman, RM.snakeman, RM.needleman, RM.hardman, RM.topman, RM.geminiman, RM.magnetman, RM.shadowman,
                        RM.ringman, RM.diveman, RM.skullman, RM.pharaohman, RM.brightman, RM.toadman, RM.drillman, RM.dustman
                        ]
    
    // MARK: - WORKER

    var delegate: RobotMasterDelegate?
    
    func getRobotMasterPicture( for name : String) {
        // struct method to retrieve UIImage name
        let nameImage : String  = name
        // no fancy string building here
        print("check name : \(nameImage)")
        self.delegate?.didUpdateRobotMasterData(handler: self, message: nameImage)
        // and pass on message to the worker elsewhere using the protocol method
    }
}




// protocol** I am writing my own protocol so I have to set up its methods know-how for the worker to have stubs to create the how- to later.
// using UIPickerView from the frameworks this part is done and can be found in the APple dev docs
// its good that I am repeating this as an exercise over and over to let it sink in
//    // func didFailWithError(error: Error)   is for when we go online and need to check if we got a hold of data from a server
// RobotMasterManager doesnt light up in xcode because thats the struct we have yet to write @ Mark: BOSS
// Mark: WORKER we write these lines within the struct because we are creating our own protocol and delegate to use elsewhere
// the Boss code knows about the worker but has yet to find out who it is in the .main when the worker gets assigned

// problems copying and pasting strings solved by using a constants file RM
