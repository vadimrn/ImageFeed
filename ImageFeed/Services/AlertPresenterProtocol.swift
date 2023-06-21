//
//  AlertPresenterProtocol.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 21.06.2023.
//

import UIKit

protocol AlertPresenterProtocol: AnyObject {
    func showAlert(model: AlertModel)
}
