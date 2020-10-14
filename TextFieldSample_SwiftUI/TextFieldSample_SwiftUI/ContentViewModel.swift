//
//  ContentViewModel.swift
//  TextFieldSample_SwiftUI
//
//  Created by home on 2020/10/14.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import Combine

// ObservableObjectに準拠したクラス
class ContentViewModel: ObservableObject {
    // 共有したい値に@Publishedをつける
    @Published var text: String = ""
    @Published var isNumericString: Bool = false
    
    private let model: CharacterDiscrimination
    private var disposables = [AnyCancellable]()
    
    init(model: CharacterDiscrimination) {
        self.model = model
        
        // 変数textの値が変更されるたびに、
        // Modelクラス（CharacterDiscriminationクラス）のメソッドhasNumericStringを呼び出す
        $text
            .sink(receiveValue: {
                if model.hasNumericString(text: $0) {
                    // textが数字の文字列であれば変数isNumericStringの状態をtrueに変更
                    self.isNumericString = true
                } else {
                    // textが数字の文字列でなければ変数isNumericStringの状態をfalseに変更
                    self.isNumericString = false
                }
            })
            .store(in: &disposables)
    }
}
