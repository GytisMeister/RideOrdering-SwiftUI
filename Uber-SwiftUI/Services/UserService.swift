//
//  UserService.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import Firebase

class UserService: ObservableObject {
    
    static let shared = UserService()
    @Published var user: User?
    
    init() {
        fetchUser()
    }
    
     func fetchUser() {
            guard let uid = Auth.auth().currentUser?.uid else { return }
            print("DEBUG: Did fetch user from firestore")
            Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
                guard let snapshot = snapshot else { return }
                guard let user = try? snapshot.data(as: User.self) else { return }
                self.user = user
        }
    }
    
    
   
//    static func fetchUser(completion: @escaping(User) -> Void) {
//        guard let uid = Auth.auth().currentUser?.uid else { return }
//        print("DEBUG: Did fetch user from firestore")
//        Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
//            guard let snapshot = snapshot else { return }
//            guard let user = try? snapshot.data(as: User.self) else { return }
//            completion(user)
//        }
//    }
}
