//
//  Settings.swift
//  Vers
//
//  Created by Mohameth Seck on 11/15/19.
//  Copyright © 2019 Mohameth Seck. All rights reserved.
//

import SwiftUI

struct Settings: View {
    @State private var accountPrivate = false
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("ABOUT")){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Privacy Policy")
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Terms of Use")
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Community Guidlines")
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("About Vers")
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Help")
                    }
                }
                
                Section(header: Text("WEB APP")){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("verstheworld.com")
                    }
                }
                
                Section(header: Text("PRIVACY")){
                    Toggle(isOn: $accountPrivate){
                        VStack(alignment: .leading) {
                            Text("Private Account")
                            HStack {
                                Text("When you account is private only people you approve as followers on Vers can see your videos. ")
                            }
                            .font(.caption)
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Learn More")
                                .font(.footnote)
                            }
                            
                        }
                    }
                }
                
                
                Section(header: Text("")){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Log Out")
                            }
                    }
                
                
            }
            .navigationBarTitle("Settings")
            
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
