//
//  AuthViewModel.swift
//  SpeakFriends
//
//  Created by christophe milliere on 29/08/2022.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    var manager = FirebaseManager.shared
    
    @Published var isFinishConnecting: Bool  = false
    @Published var isAuth: Bool = false
    @Published var showError: Bool = false
    
    var errorString: String = ""
    var datas: [String: Any] = [:]
    
    var auth: Auth {
        return manager.auth
    }
    
    init() {
        observeAutentication()
    }
    
    func observeAutentication() {
        auth.addStateDidChangeListener(handleChangeListener)
    }
    
    func handleChangeListener(auth: Auth, user: User?){
        self.isFinishConnecting = true
        self.isAuth = user != nil
    }
}
