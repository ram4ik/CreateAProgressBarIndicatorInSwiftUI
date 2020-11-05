//
//  ContentView.swift
//  CreateAProgressBarIndicatorInSwiftUI
//
//  Created by Ramill Ibragimov on 05.11.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var progressAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ProgressView("Progress...", value: progressAmount, total: 100)
            .accentColor(.green)
            .padding()
            .onReceive(timer, perform: { _ in
                if progressAmount < 100 {
                    progressAmount += 2
                }
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
