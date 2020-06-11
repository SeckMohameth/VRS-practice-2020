//
//  publish.swift
//  Vers
//
//  Created by Mohameth Seck on 11/12/19.
//  Copyright © 2019 Mohameth Seck. All rights reserved.
//

import SwiftUI

struct publish: View {
    
    
    @State private var videoTitle: String = ""
    
    var body: some View {
            VStack {
                
                TextField("Title of video", text: $videoTitle)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .padding(.horizontal)
                                   
                Divider()
                    .frame(height: 1)
                    .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                    .padding(.horizontal)
                
                Spacer()
                    .frame(height: 150)
                                       
                HStack {
                    Image(systemName: "location.circle.fill")
                    .font(.system(size:30))

                        
                    Text("Location: New Haven, CT, USA")
                    .padding()
                        .font(.title)
                }
                Spacer()
                    .frame(height: 150)

                
            
                 
                Button(action: {
                    print("video published")
                }) {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                            Text("Publish")
                    }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .font(.title)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(40)
                        .padding(.horizontal, 20)
                             

                    }
                
            }
        .navigationBarTitle("Publish Video")
        }
    }


struct publish_Previews: PreviewProvider {
    static var previews: some View {
        publish()
        
    }
}


struct uploadToS3 {
    //for uploading to AWS s3
}
