//
//  ViewController.swift
//  SamplepProtocol
//
//  Created by Ahmet Kaan UZMAN on 5.12.2021.
//

import UIKit

class ViewController: UIViewController, SampleProtocol {
    var userType: UserType? { get { return .ADMIN } }



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeUserColorBackgroundColor()
    }


}

