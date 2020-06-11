//
//  DOB-finalSignUp.swift
//  Vers
//
//  Created by Mohameth Seck on 11/11/19.
//  Copyright © 2019 Mohameth Seck. All rights reserved.
//

import SwiftUI
import WebKit

struct DOB_finalSignUp: View {
    @State private var show_modal: Bool = false
    @State private var show_modal_terms: Bool = false


    @State private var isActive: Bool = false

    @State private var firstName: String = ""
    @State private var lastName: String = ""

    
     var dateFormatter: DateFormatter {
           let formatter = DateFormatter()
           formatter.dateStyle = .long
           return formatter
       }

       @State private var birthDate = Date()

       var body: some View {
               VStack {

                Spacer()
                
                VStack {
                     TextField("firstName", text: $firstName)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .padding(.horizontal)
                                       
                    Divider()
                        .frame(height: 1)
                        .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                        .padding(.horizontal)
                    
                    Spacer()
                        .frame(height: 50)

                    
                    TextField("lastName", text: $lastName)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .padding(.horizontal)
                                       
                    Divider()
                        .frame(height: 1)
                        .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                        .padding(.horizontal)
                }

                
                

                   DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                       Text("Enter Date of Birth")
                    .padding(15)
                   }

                   Text("Date is \(birthDate, formatter: dateFormatter)")
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    NavigationLink(destination: signUp()){
                    HStack {
                        Image(systemName: "arrowshape.turn.up.left")
                        .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                        Text("Go Back")
                        .font(.system(.body, design: .rounded))
                        .bold()
                            .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                    }
                }
                }
                    
                .offset(x: 0, y: -50)
                .foregroundColor(.primary)
                
                
                Button(action: {
//                    self.isActive = true
                }) {
                    NavigationLink(destination: Profile(), isActive: self.$isActive) {
                        Text("Sign up")
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
                
                VStack{
                    Text("By tapping Sign up you agree to the ")
                    HStack(spacing: 0){
                        Button("privacy policy"){
                            self.show_modal = true
                        }
                            .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                            .sheet(isPresented: self.$show_modal){
                            internetView()
                        }
                        
                        Text(" and ")
                        Button("terms of service"){
                            self.show_modal_terms = true
                        }
                            .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                            Text(".")
                        .sheet(isPresented: self.$show_modal_terms){
                        internetView_terms()
                        
                    }
                    
                    
                }
                .font(.system(.body, design: .rounded))
                
                
               }
            //.navigationBarBackButtonHidden(true)
            .navigationBarTitle("Sign Up")
            //.navigationBarHidden(true)
            }
       }

//By signing up you accpet the terms of service and privacy policy

struct DOB_finalSignUp_Previews: PreviewProvider {
    static var previews: some View {
        DOB_finalSignUp()
    }
}


//using webkit

struct Webview: UIViewRepresentable {

    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}


//creating modal view with webkit showing policy and terms
struct internetView: View{
    var body: some View {
         Webview(request: URLRequest(url: URL(string: "https://app.termly.io/document/privacy-policy/fd53dff2-5285-4e22-9780-d95641e06eb1")!))
    }
}

//creating the view for the terms
struct internetView_terms: View{
    var body: some View {
         Webview(request: URLRequest(url: URL(string: "https://app.termly.io/document/terms-of-use-for-website/b11e0f85-8061-40de-aae0-68deb3b57c09")!))
    }
}
}
