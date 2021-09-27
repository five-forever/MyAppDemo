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

    lazy var testBgView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "AppDemo测试: "
        label.backgroundColor = .white
        label.textAlignment = .center
        return label
    }()

    lazy var testButton: UIButton = {
        let btn = UIButton()
        btn.layer.cornerRadius = 10.0
        btn.layer.borderWidth = 1.0
        btn.backgroundColor = .white
        btn.setTitle("测试值+1", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        return btn
    }()

    lazy var jumpButton: UIButton = {
        let btn = UIButton()
        btn.layer.cornerRadius = 10.0
        btn.layer.borderWidth = 1.0
        btn.backgroundColor = .white
        btn.setTitle("跳转界面", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(jumpPage), for: UIControl.Event.touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavbar()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.barStyle = .black
    }

    func setupNavbar() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.barStyle = .black
    }

    func setupUI() {
        self.view.backgroundColor = .white

        self.view.addSubview(testBgView)
        self.testBgView.addSubview(titleLabel)
        self.testBgView.addSubview(testButton)
        self.testBgView.addSubview(jumpButton)

        self.testBgView.snp.makeConstraints{ (make) in
            make.bottom.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(30)
        }

        self.titleLabel.snp.makeConstraints{ (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(50)
        }

        self.testButton.snp.makeConstraints{ (make) in
            make.bottom.equalToSuperview().offset(-200)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(60)
        }

        self.jumpButton.snp.makeConstraints{ (make) in
            make.bottom.equalToSuperview().offset(-100)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(60)
        }

    }

    func bindViewModel() {

    }

    @objc func jumpPage() {
        let vc = AddScheduleViewController()
        vc.modalPresentationStyle = .fullScreen
        if #available(iOS 13.0, *) {
            vc.isModalInPresentation = false
        }
        self.navigationController?.pushViewController(vc,animated: true);
    }


}

