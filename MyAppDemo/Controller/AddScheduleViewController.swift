//
//  AddScheduleViewController.swift
//  MyAppDemo
//
//  Created by 郭韬 on 2021/9/23.
//

import UIKit
import SnapKit
import RxCocoa
import RxSwift


class AddScheduleViewController: UIViewController {

    lazy var bgView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()

    lazy var timePicker: UIDatePicker = {
        let pick = UIDatePicker()
        pick.backgroundColor = .white
        pick.datePickerMode = .time
        pick.locale = Locale.current
        if #available(iOS 13.4, *) {
            pick.preferredDatePickerStyle = .wheels
        }
        return pick
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavbar()
    }

    func setupNavbar() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.barStyle = .black
    }

    func setupUI() {
        self.view.backgroundColor = .white

        self.view.addSubview(bgView)
        self.bgView.addSubview(timePicker)

        self.bgView.snp.makeConstraints{ (make) in
            make.bottom.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(30)
        }

        self.timePicker.snp.makeConstraints{ (make) in
            make.top.equalToSuperview().offset(60)
            make.left.right.equalToSuperview()
        }

    }

    @objc func back() {
        self.dismiss(animated: true, completion: nil)
    }
}
