//
//  ContentView.swift
//  CustomAlertInSwiftUI
//
//  Created by SHUBHAM AGARWAL on 16/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var shown = false
    @State var message = ""
    @State var c: AlertAction?
    @State var isSuccess = false
    
    var body: some View {
        
        ZStack {
                VStack {
                    Image("demo")
                        .resizable().frame(width: 300, height: 300)
                    VStack {
                        Button("Success Alert") {
                            isSuccess = true
                            message = "This is the success alert!!"
                            shown.toggle()
                        }
                        
                        Button("Failure Alert") {
                            isSuccess = false
                            message = "This is the failure alert!!"
                            shown.toggle()
                            
                        }
                        Text(c == .ok ? "ok Clikced" : c == .cancel ? "Cancel Clicked" : "")
                        
                    }
                    Spacer()
                }.blur(radius: shown ? 30 : 0)
            
            if shown {
                AlertView(shown: $shown, closureA: $c, isSuccess: isSuccess, message: message)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
