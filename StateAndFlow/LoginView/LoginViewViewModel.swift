//
//  LoginViewViewModel.swift
//  StateAndFlow
//
//  Created by horze on 10.03.2024.
//

import Foundation

final class LoginViewViewModel: ObservableObject {
    var name = ""
    @Published var isLoggedIn = false
}
