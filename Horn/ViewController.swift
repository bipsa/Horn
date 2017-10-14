//
//  ViewController.swift
//  Horn
//
//  Created by Sebastian Romero on 13/10/17.
//  Copyright © 2017 Sebastian Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let session = Session.create()
        session.name = "Sebastian"
        session.lastname = "Romero"
        _ = session.save()
        
        if let sessions = Session.find(attributes: [["name", "Sebastian"]]) as? [Session] {
            for session in sessions {
                print(session.name ?? "")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

