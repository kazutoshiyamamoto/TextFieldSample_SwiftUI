//
//  TextFieldSample.swift
//  TextFieldSample_SwiftUI
//
//  Created by home on 2020/10/14.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

// 使いまわせるようにContentViewから切り出したTextField
struct TextFieldSample: View {
    var placeholder : String
    @Binding var text: String
    
    var body: some View {
        VStack {
            TextField(placeholder, text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250)
            
            // 変数textの値が数字でなければメッセージを表示
            if !isNumericString(text: text) {
                Text("数字を入力してください")
                    .frame(width: 250, height: 50)
                    .foregroundColor(Color.red)
            }
        }
    }
    
    // 引数の文字列が数字の文字列かどうか判定
    func isNumericString(text: String) -> Bool {
        if Int(text) == nil {
            return false
        } else {
            return true
        }
    }
}

struct TextFieldSample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldSample(placeholder: "テスト", text: .constant("test"))
    }
}
