//
//  SpeakFriendsApp.swift
//  SpeakFriends
//
//  Created by christophe milliere on 29/08/2022.
//

import SwiftUI

@main
struct SpeakFriendsApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView(authVm: AuthViewModel())
        }
    }
}
