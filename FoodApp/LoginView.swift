//
//  LoginView.swift
//  FoodApp
//
//  Created by Yael Javier Zamora Moreno on 02/02/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var accept = true
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Login and ")
                        .font(.largeTitle)
                        .bold()
                    Text("enjoy")
                        .font(.largeTitle)
                        .bold()
                        .padding(5)
                        .foregroundColor(.orange)
                        .background(.orange.opacity(0.2))
                }
                
                Text("Logging in to your account. Access personalized features, save yout preferences, and experience a seamless journey through our application.")
                    .foregroundColor(.gray)
                    .font(.callout)
                    .padding()
                
                HStack {
                    Image(systemName: "envelope.badge").foregroundColor(.gray)
                    Divider()
                    TextField("Type your Email...", text: $email)
                }
                .padding()
                .frame(height: 70)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
                .padding()
                
                HStack {
                    Image(systemName: "lock.shield").foregroundColor(.gray)
                    Divider()
                    TextField("Type your password...", text: $password)
                }
                .padding()
                .frame(height: 70)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
                .padding()
                
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5).stroke()
                        if accept {
                            Color.orange
                            Image(systemName: "checkmark").foregroundColor(.white)
                        }
                    }
                    .frame(width: 25, height: 25)
                    .cornerRadius(5)
                    .onTapGesture {
                        accept.toggle()
                    }
                    Text("You accept the terms and conditions?")
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                
                if email.isEmpty || password.isEmpty {
                    Text("Enter all inputs!")
                        .foregroundColor(.red)
                        .bold()
                        .padding()
                        .background()
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.2), radius: 6)
                        .padding(.top, 30)
                }
                
                NavigationLink {
                    //
                } label: {
                    Text("Login")
                        .frame(width: 350, height: 50)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }.padding(.vertical)
                
                Text("Or login with your social networks")
                    .foregroundColor(.gray)
                    .font(.callout)
                
                HStack(spacing: 80) {
                    Image(systemName: "g.circle")
                    Image(systemName: "f.circle")
                    Image(systemName: "apple.logo")
                }
                .font(.largeTitle)
                .padding(.top)
            }
        }
    }
}

#Preview {
    LoginView()
}

