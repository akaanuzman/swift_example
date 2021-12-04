//
//  SampleProtocol.swift
//  SamplepProtocol
//
//  Created by Ahmet Kaan UZMAN on 5.12.2021.
//

import UIKit

enum UserType {
    case ADMIN
    case USER
}

protocol SampleProtocol: UIViewController {
    var userType: UserType? { get }
    func changeUserColorBackgroundColor()
}

extension SampleProtocol {
    var userType: UserType? { get { return .USER } }
    func changeUserColorBackgroundColor() {
        view.backgroundColor = userType == UserType.ADMIN ? .red : .blue
    }
}
