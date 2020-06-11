//
//  ContentView.swift
//  Vers
//
//  Created by Mohameth Seck on 11/8/19.
//  Copyright © 2019 Mohameth Seck. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive: Bool = false
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
      
        NavigationView{
            ZStack {
                VStack {
                    Text("Project Vers")
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                    .padding(.bottom, 30)
                    .offset(x: 0, y: 60)
                    Spacer()
                    
                    VStack {
                        TextField("Email", text: $email)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .padding(.horizontal)
                    
                        Divider()
                        .frame(height: 1)
                        .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                        .padding(.horizontal)
                        
                            Spacer()
                            .frame(height: 50)

                        SecureField("Password", text: $password)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .padding(.horizontal)
                        
                        Divider()
                        .frame(height: 1)
                        .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                        .padding(.horizontal)
                    }
                            
                    VStack(spacing: 130) {
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Forgot Password")
                            .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                            .font(.system(.body, design: .rounded))
                            .bold()
                        }
                        .offset(x: 0, y: 50)
                        .foregroundColor(.primary)
                        

                       
                        Button(action: {}) {
                                Text("Login")
                           .font(.system(.body, design: .rounded))
                           .foregroundColor(.white)
                           .bold()
                           .padding()
                           .frame(minWidth: 0, maxWidth: .infinity)
                           .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
                           .cornerRadius(10)
                           .padding(.horizontal)

                        }

                    }

                    Spacer()
                    //button for moving to next view
                     HStack {
                        Text("Don't have an account?")
                            .font(.system(.body, design: .rounded))
                            .bold()
                                       
                            Button(action: {
                                       // Proceed to Sign in screen
                                   }) {
                            NavigationLink(destination: signUp(), isActive: self.$isActive) {
                                        Text("Sign up")
                                .font(.system(.body, design: .rounded))
                                .bold()
                                .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                                    }
                                }
                            }.padding(.top, 50)
                        .offset(x: 0, y: -50)
                    
                }//VStack
                .navigationBarTitle("", displayMode: .inline)
                //.navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            }//nav
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()//.colorScheme(.dark)
    }
}


