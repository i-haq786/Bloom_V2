//
//  NoEventsDefaultView.swift
//  BLOOMFINAL
//
//  Created by Inzamam on 20/07/23.
//

import SwiftUI

struct NoEventsDefaultView: View {
    var body: some View {
//        ZStack{
//            Color.red
//                .ignoresSafeArea()
        VStack(spacing: 40) {
            
            Text("Gather your friends, family, and loved ones for an amazing time filled with joy and laughter. Organize a unique event that brings people together, celebrates special moments, and creates bonds that will last a lifetime.")
                .font(.body)
                .foregroundColor(Color("primary"))
                .multilineTextAlignment(.center)
                .padding()
                .padding(.top, 80)
            //            TextField("Enter your event name", text: .constant(""))
            //                .padding()
            //                .textFieldStyle(RoundedBorderTextFieldStyle())
            //                .foregroundColor(.black)
            //                .font(.body)
            //                .multilineTextAlignment(.center)
            Image(systemName: "play.square.stack.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color("background"))
                
            Text("Create an unforgettable event that leaves lasting memories! 🎉🎈🥳")
                .font(.headline)
                .foregroundColor(Color("accent"))
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
        
     //   .background(Color("primary"))
  //  }
        
    }
}

struct NoEventsDefaultView_Previews: PreviewProvider {
    static var previews: some View {
        NoEventsDefaultView()
    }
}
