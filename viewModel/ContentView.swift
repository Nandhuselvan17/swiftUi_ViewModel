//
//  ContentView.swift
//  demoApk
//
//  Created by wac on 04/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var userName : String = ""
    @State var navigationBool : Bool = false
   
    var body: some View {
        NavigationStack {
            VStack(){
                Text("User Name")
                    .font(.subheadline)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    TextField("User Name", text: $userName)
                        .frame(width: 300,height: 30,alignment: .trailing)
                        .padding()
                }
                .frame(
                    maxWidth: .infinity,alignment: .leading
                )
                Spacer()
//                NavigationLink(destination: profileView()) {
//                    Text("Login")
//                }
                
                Button("Login",action: {
                    if userName.count>0{
                        navigationBool = true
                    }else{
                        navigationBool = false
                    }
                  
                })
            }
            .padding()
            .frame(maxHeight: .infinity,alignment: .top)
            .navigationBarBackButtonHidden()
            .navigationBarTitle(
                Text("Login")
                    
            )
            .navigationDestination(isPresented: $navigationBool) {
                profileView(userModel: .init(userProfile: .init(name: "nandhu", age: 23, dob: "01-02-1899", mobile: "1234567898", email: "test@gmail")))
            }
            
        }

       
                
        
        
       
    }
}

#Preview {
    ContentView()
}
