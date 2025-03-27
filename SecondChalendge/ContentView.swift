//
//  ContentView.swift
//  SecondChalendge
//
//  Created by Авазбек Надырбек уулу on 20.03.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageSystem = ""
    @State private var animationAmount = 1.0
    @State private var lastMessage = -1
    @State private var lastImgeNumber = -1
    
    let images: [String] = ["image0", "image1", "image2"]
    let messages: [String] = ["You are Awesome!", "You are cool!", "You are amazing! and so much more and more and more and more and more and more"]
    
    func updateContentRandomly() {
        
        var randomIndex2: Int
        repeat {
            randomIndex2 = Int.random(in: 0...(messages.count - 1))
        } while randomIndex2 == lastMessage
        message = messages[randomIndex2]
        // this is most important code for saving not to repeat the same message
        lastMessage = randomIndex2
        
        //        var randomIndex = Int.random(in: 0...(messages.count - 1))
        //        while randomIndex == lastMessage {
        //            randomIndex = Int.random(in: 0...(messages.count - 1))
        //        }
        //        message = messages[randomIndex]
        //        lastMessage = randomIndex

        
        var randomImageIndex2: Int
        repeat {
            randomImageIndex2 = Int.random(in: 0...(images.count - 1))
        } while randomImageIndex2 == lastImgeNumber
        // this is most important code for saving not to repeat the same image
        imageSystem = images[randomImageIndex2]
                    
//        var randomImageIndex = Int.random(in: 0...(images.count - 1))
//        while randomImageIndex == lastImgeNumber {
//            randomImageIndex = Int.random(in: 0...(images.count - 1))
//        }
//        imageSystem = images[randomImageIndex]
//        // this is most important code for saving not to repeat the same image
//        
//        lastImgeNumber = randomImageIndex
        
        // abouve
    }
    
    var body: some View {
        VStack {
            
            Text("\(message)")
                .font(.largeTitle)
                .foregroundStyle(.red)
                .padding()
                .transition(.slide)
                .animation(.easeInOut, value: message)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 130)
            
            Image(imageSystem)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .scaleEffect(animationAmount)
                .animation(.spring(duration: 0.5), value: imageSystem)
                .transition(.scale )
            
            
            Spacer()
            
            Button("Press me!!!") {
                withAnimation {
                    updateContentRandomly()
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.headline)
            .tint(.orange)
            .scaleEffect(animationAmount)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
