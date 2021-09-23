//
//  CustomNavBar.swift
//  MyAppDemo
//
//  Created by 郭韬 on 2021/9/23.
//

import UIKit

class CustomNavBar: UINavigationBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

