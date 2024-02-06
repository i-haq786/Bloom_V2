//
//  PassesView.swift
//  BLOOMFINAL
//
//  Created by Inzamam on 16/06/23.
//

import SwiftUI
import FirebaseFirestore
import FirebaseAuth
struct PassesView: View {
    
    @State private var passData : [PassData] = []
    @State private var isFetching: Bool = true
    
    var body: some View {
        NavigationStack{
           ScrollView {
               if isFetching{
                   ProgressView()
                       .padding(.top, 30)
               }
               else{
                   if passData.isEmpty{
                       Text("Time to book some events to see your passes")
                           .font(.caption)
                           .foregroundColor(Color("primary"))
                           .padding()
                           .padding(.top, 300)
                   }
               
                   else{
                       ForEach(passData, id: \.bookingId) { data in
                           PassView(data: data).padding(10)
                       }
                   }
                   Spacer()
               }
                   }.navigationTitle("Passes")
                //.padding(10)
        }.onAppear{
            Task{
                do{
                    guard let userUID = Auth.auth().currentUser?.uid else{return}
                    let docs = try await Firestore.firestore().collection("Users").document(userUID).collection("Passes").getDocuments()
                    
                    let fetchedPasses = docs.documents.compactMap{ doc -> PassData? in
                        try? doc.data(as: PassData.self)
                    }
                    passData = fetchedPasses
                    isFetching = false
                }
                catch{
                    print("Fetch pass failed")
                }
            }
        }
       
    }
}

struct PassesView_Previews: PreviewProvider {
    static var previews: some View {
        PassesView()
    }
}
