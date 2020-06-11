//
//  Profile.swift
//  Vers
//
//  Created by Mohameth Seck on 11/11/19.
//  Copyright © 2019 Mohameth Seck. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
            VStack {
                
                HStack {
                    Button(action: {
                        
                    }) {
                        NavigationLink(destination: camera()){
                        Text("")
                        Image(systemName:"camera.fill")
                        .padding()
                        .font(.system(size:40))
                        .foregroundColor(.primary)
                        }
                    }
                    Spacer()
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        NavigationLink(destination: Settings()) {
                        Image(systemName:"gear")
                        .padding()
                        .font(.system(size:40))
                        .foregroundColor(.primary)

                    }                        
                }
                }// end of horizontal slack
                
                Text("Mohameth Seck")
                    .font(.title).bold()
                Text("@mohamedali360").opacity(0.50)
                Spacer()
                
                List{
                    Section(header: Text("Videos published")){
                    
                    Text("video 1")
                    Text("video 2")
                    Text("video 3")
                    Text("video 4")
                    Text("video 5")
                    }
                }.listStyle(GroupedListStyle())
            }
            .navigationBarTitle("Profile", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)


        }
    }

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
