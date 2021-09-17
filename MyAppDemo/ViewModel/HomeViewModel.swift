//
//  HomeViewModel.swift
//  MyAppDemo
//
//  Created by 郭韬 on 2021/9/17.
//

import Foundation
import RxCocoa
import RxSwift

/// 支持输入输出的ViewModel要遵从的协议, 为编写更加容易测试的ViewModel
protocol ViewModelType {
    /// View的输入事件等，比如下拉刷新，点击选择事件，输入框输入事件等等一切View的触发事件
    associatedtype Input
    /// 输出给View的可观察属性，比如View的一些状态值，显示到View的数据源
    associatedtype Output
    /// 根据输入ViewModel转化处理后输出，该方法为ViewModel处理逻辑封装，也是单元测试要测试的ViewModel的代码
    func transform(input: Input) -> Output
}

class HomeViewModel: NSObject {
    /// Rx资源回收包
    var disposeBag = DisposeBag()

}
