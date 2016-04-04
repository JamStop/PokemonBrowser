//
//  PokemonViewController.swift
//  PokemonBrowser
//
//  Created by Jimmy Yue on 4/2/16.
//  Copyright © 2016 Jimmy Yue. All rights reserved.
//

import UIKit
import Foundation
import RxSwift

class PokemonViewController: UIViewController {
    
    // MARK: - Properties
    let disposeBag = DisposeBag()
    let viewModel = PokemonViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
