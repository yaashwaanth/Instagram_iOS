//
//  RegistrationViewModel.swift
//  Instagram
//
//  Created by G Yashwanth Sharma on 09/09/23.
//

import Foundation


class RegistrationViewModel : ObservableObject{
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws{
        try await AuthService.shared.createUser(email: email, password: password, username: username)
        
        username = ""
        email = ""
        password = ""
    }
    
}
