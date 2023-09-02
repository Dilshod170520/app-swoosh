//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by MacBook Pro on 01/09/23.
//

import UIKit

class LeagueVCViewController: UIViewController {

    var player: Player!

    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func nextBtnTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLegue(leagueType: "Co-ed")
        
    }
    @IBAction func onMenstapped(_ sender: Any) {
        selectLegue(leagueType: "Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLegue(leagueType: "Womens")
    }
    
    func selectLegue( leagueType: String ) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      super.prepare(for: segue, sender: sender)
        
        if let skillVC  = segue.destination  as? SkillVC {
            skillVC.player = player
        }
    }
}
