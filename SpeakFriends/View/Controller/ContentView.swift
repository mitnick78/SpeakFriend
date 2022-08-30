//
//  ContentView.swift
//  SpeakFriends
//
//  Created by christophe milliere on 29/08/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authVm: AuthViewModel

    var body: some View {
        if authVm.isFinishConnecting {
            if authVm.isAuth {
                Text("Nous sommes auth")
            } else {
                LoginViewModel(authVm: authVm)
            }
        } else {
            Text("En attente de connection")
                .font(.title)
                .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(authVm: AuthViewModel())
    }
}
