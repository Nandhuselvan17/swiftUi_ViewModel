//
//  dataViewModel.swift
//  viewModel
//
//  Created by wac on 05/11/2024.
//

import Foundation
import SwiftUICore
import SwiftUI

final class DataViewModel: ObservableObject {
    
    @Published var userProfile: UserProfile
       
       // Initialize with a default UserProfile or empty data
       init(userProfile: UserProfile) {
           self.userProfile = userProfile
       }
       
       // Method to update user profile
       func updateUserProfile(name: String, age: Int, dob: String, mobile: String, email: String) {
           userProfile = UserProfile(name: name, age: age, dob: dob, mobile: mobile, email: email)
       }
    
 
}
