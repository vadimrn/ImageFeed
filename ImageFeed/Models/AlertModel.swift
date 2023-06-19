//
//  AlertModel.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 28.04.2023.
//

import Foundation

struct AlertModel {
    let title: String
    let message: String
    let buttonText: String
    let completion: () -> Void?
}
