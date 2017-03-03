//
//  InfoCell.swift
//  GithubDemo
//
//  Created by Derek Ho on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class InfoCell: UITableViewCell {
  
    @IBOutlet weak var forkCountLabel: UILabel!
    @IBOutlet weak var starCountLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var forkImageView: UIImageView!
    
    var infoData: GithubRepo!{
        didSet{
            nameLabel.text = infoData.name
            ownerLabel.text = infoData.ownerHandle
            descriptionLabel.text = infoData.repoDescription
            let urlString = infoData.ownerAvatarURL
            let url = URL(string: urlString!)
            forkCountLabel.text = "\(infoData.forks!)"
            starCountLabel.text = "\(infoData.stars!)"
            avatarImageView.setImageWith(url!)
        }
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
           }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
