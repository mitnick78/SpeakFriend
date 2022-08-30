//
//  FirebaseManager.swift
//  SpeakFriends
//
//  Created by christophe milliere on 29/08/2022.
//

import Foundation

import Firebase

class FirebaseManager {
    static let shared = FirebaseManager()
    
    var auth: Auth
    
    init(){
        FirebaseApp.configure()
        auth = Auth.auth()
    }
    //Auth
    //SignIn
    //Create
    //Logout
    
    //CloudFirestore
    //CreateUser
    //CreateMessage
    
    //Storage
}
