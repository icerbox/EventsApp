//
//  UIViewController+Extensions.swift
//  EventsApp
//
//  Created by Айсен Еремеев on 17.02.2023.
//

import UIKit

extension UIViewController {
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return controller
    }
}
