//
//  profileView.swift
//  demoApk
//
//  Created by wac on 04/11/2024.
//

import SwiftUI

struct profileView: View {
    @StateObject var userModel: DataViewModel
    @State var navigationBool : Bool = false

     var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    Text ("Name :")
                    Text("\(userModel.userProfile.name)")
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                HStack{
                    Text ("Age :")
                    Text("\(userModel.userProfile.age)")
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                HStack{
                    Text ("DOB :")
                    Text("\(userModel.userProfile.dob)")
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                HStack{
                    Text ("Mobile :")
                    Text("\(userModel.userProfile.mobile)")
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                HStack{
                    Text ("Email :")
                    Text("\(userModel.userProfile.email)")
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                Spacer()
                
                NavigationLink(destination: changeProfile(userModel: self.userModel)) {
                                   Text("Change")
                        
                               }
            }
            .frame(maxHeight: .infinity,alignment: .top)
            .padding()
            .navigationBarBackButtonHidden()
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle(
                Text("Profile")
                   
                     
            )
          
            
          
         
            
           
            
        }
       
    }
}

#Preview {
    profileView(userModel: .init(userProfile: .init(name: "nandhu", age: 23, dob: "01-02-1899", mobile: "1234567898", email: "test@gmail")))
}
