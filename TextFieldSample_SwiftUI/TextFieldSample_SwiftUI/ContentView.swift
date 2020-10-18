//
//  ContentView.swift
//  TextFieldSample_SwiftUI
//
//  Created by home on 2020/10/13.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // SceneDelegateでインスタンス化したContentViewModelの@Publishedをつけた変数を利用するため@EnvironmentObjectをつける
    @EnvironmentObject var viewModel: ContentViewModel
    
    //    init(viewModel: ContentViewModel) {
    //        self.viewModel = viewModel
    //    }
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .center) {
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
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
                // 遷移先のSharedTextViewの変数ViewModelにSceneDelegateでインスタンス化したContentViewModelを共有する
                NavigationLink(destination: SharedTextView().environmentObject(self.viewModel)) {
                    Text("値の共有を確認する")
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10, antialiased: true)
                }
                .navigationBarTitle("Sample")
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
