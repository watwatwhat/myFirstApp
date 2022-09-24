//
//  ChartView.swift
//  myFirstApp
//
//  Created by Takayuki Tanaka on 2022/09/24.
//

import SwiftUI

struct ChartView: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        Button("Close ModalView.") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
