//
//  ContentView.swift
//  myFirstApp
//
//  Created by Takayuki Tanaka on 2022/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var displayText = "Status is displayed Here."
    @State var tappedNum = 0
    var body: some View {
        VStack {
            Text(displayText)
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello World form iOS app!")
            Button("Tap me!", action: {
                displayText = "A button is tapped."
            })
            Button("Increment!", action: {
                tappedNum += 1
                displayText = String(tappedNum)
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
