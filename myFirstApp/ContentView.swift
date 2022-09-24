//
//  ContentView.swift
//  myFirstApp
//
//  Created by Takayuki Tanaka on 2022/09/23.
//

import SwiftUI

struct ContentView: View {
    
    
    init() {
//        -----navigation color settings
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.gray
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
//        -----
    }
    @State private var showingChartModal = false
    
    var body: some View {
        NavigationView(content: {
            List {
                NavigationLink(destination: ButtonView()) {
                    Text("Button")
                }
                Button("chart") {
                    self.showingChartModal.toggle()
                }.sheet(isPresented: $showingChartModal) {
                    ChartView()
                }
            }
            .navigationTitle("What's in it?")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("options")
                    }) {
                        Image(systemName: "ellipsis.circle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("右のボタンが押されたよ")
                    }){
                        HStack {
                            Image(systemName: "trash")
                            Text("削除")
                        }
                    }
                }
            }
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
