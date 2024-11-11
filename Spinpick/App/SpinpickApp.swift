//
//  SpinpickApp.swift
//  Spinpick
//
//  Created by Anatoli Petrosyants on 11.11.24.
//

import SwiftUI

@main
struct SpinpickApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .onAppear {
                print(Configuration.current.buildConfiguration)
            }
        }
    }
}
