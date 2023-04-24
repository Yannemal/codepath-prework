//
//  PickerViewController.swift
//  PickerDuoBee
//
//  Created by yannemal on 10/04/2023.
//

import UIKit
import SpriteKit
        // 5. add delegate, protocol
class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, RobotMasterDelegate {
  
        // 3. add IBOutlet for Picker from Storyboard
    @IBOutlet weak var bossPicker: UIPickerView!
    
    @IBOutlet weak var spritekitBossView: SKView!
    // UIImage View on top of SKView
    @IBOutlet weak var bossView: UIImageView!
    
    
    // init robotMaster worker
    var robotMasterManager = RobotMasterManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 4. add Picker worker to VC
        bossPicker.delegate = self
        bossPicker.dataSource = self
        // add robotMaster worker to VC
        robotMasterManager.delegate = self
        
    }
    
    // MARK: - PICKERVIEW delegate PROTOCOL
    // 5. B) add the 2 stubs manually for pickerView
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         // add bossDataModel
        return robotMasterManager.robotMasters[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         // add bossDataModel
        robotMasterManager.getRobotMasterPicture(for: robotMasterManager.robotMasters[row])
    }
    // MARK: - DATASOURCE Protocol
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return robotMasterManager.robotMasters.count
    }
    
    // MARK: - ROBOTMASTER delegate PROTOCOL
    func didUpdateRobotMasterData(handler robotMasterManager: RobotMasterManager, message robotMasterData: String) {
        // add IBOutlet for UIImageView for the sprite to be displayed in
        self.bossView.image = UIImage(named: robotMasterData)
        // or use SKView ?
   
        
    }
    

}


