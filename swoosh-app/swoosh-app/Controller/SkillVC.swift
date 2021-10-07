//
//  SkillVC.swift
//  swoosh-app
//
//  Created by Beck, James on 10/6/21.
//

import UIKit

class SkillVC: UIViewController {

    
    var player: Player!
    
    @IBOutlet weak var finishBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onFinishTapped(_ sender: Any) {
        performSegue(withIdentifier: "playBallSegue", sender: self)
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectSkill(skillType: "beginner")
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        selectSkill(skillType: "baller")
    }
    
    func selectSkill(skillType: String) {
        player.selectedSkillLevel = skillType
        finishBtn.isEnabled = true
        
    }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let playBallVC = segue.destination as? PlayBallVC {
                playBallVC.player = player
            }
    
        }
    
}
