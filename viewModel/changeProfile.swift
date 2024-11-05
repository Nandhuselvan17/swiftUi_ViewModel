//
//  changeProfile.swift
//  demoApk
//
//  Created by wac on 04/11/2024.
//

import SwiftUI

struct changeProfile: View {
//    @Binding var user: UserProfile
    @ObservedObject var userModel: DataViewModel
    @Environment(\.dismiss) private var dismiss
    @State var userName : String = ""
    @State var userAge : String = ""
    @State var userDob : String = ""
    @State var userMobile : String = ""
    @State var userEmail : String = ""
     var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    Text ("Name :")
                    TextField("\(userModel.userProfile.name)", text: $userName)
                    
                        .frame(width: 200,height: 30,alignment: .trailing)
                        .padding()
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                HStack{
                    Text ("Age :")
                    TextField("\(userModel.userProfile.age)", text: $userAge)
                        .frame(width: 200,height: 30,alignment: .trailing)
                        .padding()
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                HStack{
                    Text ("DOB :")
                    TextField("\(userModel.userProfile.dob)", text: $userDob)
                        .frame(width: 200,height: 30,alignment: .trailing)
                        .padding()
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                HStack{
                    Text ("Mobile :")
                    TextField("\(userModel.userProfile.mobile)", text: $userMobile)
                        .frame(width: 200,height: 30,alignment: .trailing)
                        .padding()
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                HStack{
                    Text ("Email :")
                    TextField("\(userModel.userProfile.email)", text: $userEmail)
                        .frame(width: 200,height: 30,alignment: .trailing)
                        .padding()
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                Spacer()
                
                Button("Update",action: {
                    let name = userName == "" ? userModel.userProfile.name : userName
                    let age = userAge == "" ? String(userModel.userProfile.age) : userAge
                    let dob = userDob == "" ? userModel.userProfile.dob : userDob
                    let mobile = userMobile == "" ? userModel.userProfile.mobile : userMobile
                    let email = userEmail == "" ? userModel.userProfile.email : userEmail
                    userModel.userProfile = .init(name: name, age: Int(age) ?? 0, dob: dob, mobile: mobile, email: email)
                    self.dismiss()
                })
                
               
            }
            .frame(maxHeight: .infinity,alignment: .top)
            .padding()
            
            
          
         
            
           
            
        }
        .navigationBarBackButtonHidden()
       
        .navigationBarTitle(
            Text("Change Profile")
                 
        )
    }
}

#Preview {
    changeProfile(userModel: .init(userProfile: .init(name: "nandhu", age: 23, dob: "01-02-1899", mobile: "1234567898", email: "test@gmail")))
}
