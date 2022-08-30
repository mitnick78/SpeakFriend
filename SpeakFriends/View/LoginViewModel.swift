//
//  LoginViewModel.swift
//  SpeakFriends
//
//  Created by christophe milliere on 30/08/2022.
//

import SwiftUI

struct LoginViewModel: View {
    @StateObject var authVm: AuthViewModel
    
    @State var email: String = ""
    @State var password: String = ""
    @State var name: String = ""
    @State var giveName: String = ""
    @State var tag: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Picker("Choix du compte", selection: $tag) {
                        Text("Connection").tag(0)
                        Text("Création").tag(1)
                    }.pickerStyle(.segmented)
                    VStack {
                        if tag == 1 {
                            TextField("Prenom", text: $giveName).textFieldStyle(.roundedBorder)
                            TextField("Nom", text: $name).textFieldStyle(.roundedBorder)
                        }
                        TextField("Email", text: $email).textFieldStyle(.roundedBorder)
                        SecureField("Mot de passe", text: $password).textFieldStyle(.roundedBorder)
                        
                    
                    }
                    .padding()
                    .background(Color.blue.opacity(0.23))
                    .cornerRadius(15)
                    
                    Button("Valider") {
                        print("Valider")
                    }
                    .padding()
                    .background(Color.blue.opacity(0.23))
                    .cornerRadius(15)
                    .foregroundColor(.white)
                }
                .animation(.easeOut, value: tag)
                .padding()
            }
        }.navigationTitle("Speak Friends")
    }
}

struct LoginViewModel_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewModel(authVm: AuthViewModel())
    }
}
