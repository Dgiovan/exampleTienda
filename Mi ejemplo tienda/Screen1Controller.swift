//
//  Screen1Controller.swift
//  Mi ejemplo tienda
//
//  Created by MacGio on 6/24/19.
//  Copyright © 2019 ArturoRSMD. All rights reserved.
//

import UIKit

class Screen1Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func next(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "segue2", sender: nil)
    }


}
