//
//  LoginView.swift
//  StateAndFlow
//
//  Created by horze on 10.03.2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            HStack {
                TextFieldView(loginViewVM: loginViewVM)
            }
            Button(action: loginViewVM.login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(!loginViewVM.nameIsValid)
        }
        .padding()
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}

struct TextFieldView: View {
    @ObservedObject var loginViewVM: LoginViewViewModel
    
    var body: some View {
        ZStack {
            TextField("Enter your name", text: $loginViewVM.user.name)
                .multilineTextAlignment(.center)
            HStack {
                Spacer()
                Text(loginViewVM.userNameCharCount)
                    .font(.callout)
                    .foregroundStyle(loginViewVM.nameIsValid ? .green : .red)
                    .padding([.top, .trailing])
            }
            .padding(.bottom)
        }
    }
}

