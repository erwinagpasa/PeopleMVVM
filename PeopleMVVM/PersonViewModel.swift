//
//  PersonViewModel.swift
//  PeopleMVVM
//
//  Created by erwinagpasa on 07/01/2024.
//  This just a swift file

import SwiftUI

class PersonViewModel: ObservableObject {
  @Published var people: [PersonModel] = []
  
  init(){
    addPeople()
  }
  
  func addPeople(){
    people = peopleData
  }
  
  func shuffleOrder(){
    people.shuffle()
  }
  
  func reverseOrder(){
    people.reverse()
  }
  
  func removeLastPerson(){
    people.removeLast()
  }
    
  func removeFirstPerson() {
    people.removeFirst()
  }
  
}


//Dummy Data
let peopleData = [
  PersonModel(name: "Jon Snow", email: "jon@gmail.com", phoneNumber: "555-5555"),
  PersonModel(name: "Robert Baratheon", email: "robert@gmail.com", phoneNumber: "555-5555"),
  PersonModel(name: "Cersie Lannister", email: "cersie@gmail.com", phoneNumber: "555-5555"),
  PersonModel(name: "Daenarys Targaryen", email: "daenays@gmail.com", phoneNumber: "555-5555"),
  PersonModel(name: "Samwell Tarly", email: "samwell@gmail.com", phoneNumber: "555-5555")
]
