//
//  ContentView.swift
//  SecondChalendge
//
//  Created by Авазбек Надырбек уулу on 20.03.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text = ""
    @State private var imageSystem = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "\(imageSystem)")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 300, height: 300)
            Text("\(text)")
                .font(.largeTitle)
                .foregroundStyle(.black)
                .padding()
            Spacer()
            Button("Press me!!!") {
                
                let messsage1 = "You are Awesome!!!"
                let messsage2 = "You are Greate!!!!"
                
                let imageString = ["hand.thumbsup", "sun.max.fill"]
                
                
                if text == messsage1 {
                    text = messsage2
                    imageSystem = imageString[0]
                } else {
                    text = messsage1
                    
                    imageSystem = imageString[1]
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.headline)
            .tint(.orange)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
