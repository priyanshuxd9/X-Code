//
//  ContentView.swift
//  demo1
//
//  Created by Priyanshu Darshan on 31/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                
                
                Image("mastercard")
                    .resizable()
                    .cornerRadius(9.0)
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("MasterCard")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
