//
//  PersonModel.swift
//  PeopleMVVM
//
//  Created by Developer on 07/01/2024.
//
// This just a swift file

import SwiftUI

struct PersonModel: Identifiable {
  var id = UUID()
  var name: String
  var email: String
  var phoneNumber: String
}

