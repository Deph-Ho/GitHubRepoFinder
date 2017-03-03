//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Dephanie Ho on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol  SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

class SearchSettingsViewController: UIViewController {
    
    @IBOutlet weak var minStarLabel: UILabel!
    var minStar: Int?
    var settings: GithubRepoSearchSettings!
    
    @IBOutlet weak var slider: UISlider!
   
    @IBAction func onSlider(_ sender: Any) {
        minStar = Int(slider.value)
        minStarLabel.text = "\(minStar!)"
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        self.settings.minStars = self.minStar!
        self.delegate?.didSaveSettings(settings: self.settings)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {

        self.delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)
    }
    
    weak var delegate: SettingsPresentingViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


