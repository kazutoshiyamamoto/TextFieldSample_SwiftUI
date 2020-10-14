//
//  ContentView.swift
//  TextFieldSample_SwiftUI
//
//  Created by home on 2020/10/13.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // ContentViewModelの@Publishedをつけた変数を利用するため@ObservedObjectをつける
    @ObservedObject var viewModel: ContentViewModel
    
    init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            // 文字を入力するごとにContentViewModelクラスの変数textの値が更新される
            TextField("数字を入力", text: $viewModel.text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250)
            
            // ContentViewModelクラスの変数isNumericStringが更新されるたびに以下の処理を実行する
            if !viewModel.isNumericString {
                Text("数字を入力してください")
                    .frame(width: 250, height: 50)
                    .foregroundColor(Color.red)
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
