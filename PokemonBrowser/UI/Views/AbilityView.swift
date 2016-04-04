//
//  AbilityView.swift
//  PokemonBrowser
//
//  Created by Jimmy Yue on 4/2/16.
//  Copyright © 2016 Jimmy Yue. All rights reserved.
//

import Foundation
import UIKit

class AbilityView: UIView {
    
    // MARK: - Properties
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Functions
    override func awakeFromNib() {
        setupTableView()
    }
    
    private func setupTableView () {
        
        // register nib
        let postNib = UINib(nibName: "PostTableViewCell", bundle: nil)
        tableView.registerNib(postNib, forCellReuseIdentifier: "PostTableViewCell")
        
        let featuredPostNib = UINib(nibName: "FeaturedPostTableViewCell", bundle: nil)
        tableView.registerNib(featuredPostNib, forCellReuseIdentifier: "FeaturedPostTableViewCell")
        
    }
    
    func startInitialLoad() {
        tableView.hidden = true
        tableView.alpha = 0
        LoadingHUD.sharedHUD.showInView(self)
        
    }
    
    func endInitialLoad() {
        LoadingHUD.sharedHUD.hide()
        tableView.hidden = false
        UIView.animateWithDuration(0.5, animations: {
            self.tableView.alpha = 1
        })
        tableView.reloadData()
        
        
    }
    
}
