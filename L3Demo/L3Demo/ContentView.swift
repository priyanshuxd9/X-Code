//
//  ContentView.swift
//  L3Demo
//
//  Created by Priyanshu Darshan on 04/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("mastercrad")
            Color.blue.opacity(0.5)
                .ignoresSafeArea()
            VStack{
                VStack(alignment: .leading, spacing: 20.0 ) {
                    Image("mastercard")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    VStack(alignment: .leading, spacing: 15  ) {
                        
                        HStack {
                            Text("MasterCard")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                            Spacer()
                            VStack{
                                HStack{
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.leadinghalf.fill")
                                }
                                .foregroundColor(.orange)
                                .font(.caption2)
                                Text("372 Reviews")
                                    .foregroundColor(.orange)
                                    .font(.caption)
                            }
                            
                        }
                        
                        
                        Text("Credit cards for good")
                            .foregroundColor(.gray)
                    }
                }
                HStack{
                    Spacer()
                    Image(systemName: "indianrupeesign.bank.building.fill")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
                
                
                
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 100))
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
