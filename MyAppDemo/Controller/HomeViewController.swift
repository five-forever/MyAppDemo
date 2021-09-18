//
//  ViewController.swift
//  MyAppDemo
//
//  Created by 郭韬 on 2021/9/16.
//

import UIKit
import SnapKit
import RxCocoa
import RxSwift

class HomeViewController: UIViewController {

    /// Rx资源回收包
    let disposeBag = DisposeBag()
    var viewModel = HomeViewModel()

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "AppDemo测试: "
        label.textAlignment = .center
        return label
    }()

    lazy var testButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("测试纸+1", for: .normal)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(testButton)

        self.titleLabel.snp.makeConstraints{ (make) in
            make.top.equalToSuperview().offset(50)
            make.left.equalToSuperview().offset(self.view.bounds.width / 2 - 100)
            make.width.equalTo(200)
            make.height.equalTo(40)
        }
    }

    func bindViewModel() {

    }



}

