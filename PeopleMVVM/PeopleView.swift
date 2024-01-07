//
//  PeopleView.swift
//  PeopleMVVM
//
//  Created by erwinagpasa on 07/01/2024.
//

import SwiftUI

struct PeopleView: View {
  
  @ObservedObject  var viewModel = PersonViewModel()
  
    var body: some View {
      ZStack(alignment:.bottomTrailing) {
        ScrollView {
          ForEach(viewModel.people){ person in

            HStack {
              Text(person.name)
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
              Spacer()
              
              VStack(alignment: .trailing) {
                Text(person.phoneNumber)
                Text(person.email)
              }
            }
            .frame(height:80)
          }
        }
        Menu("Menu".uppercased()) {
          Button(action: {viewModel.reverseOrder()},
                 label: {Text("Reverse")})
          
          Button(action: {viewModel.shuffleOrder()},
                 label: {Text("Shuffle")})

          Button(action: {viewModel.removeLastPerson()},
                 label: {Text("Remove Last")})

          Button(action: {viewModel.removeFirstPerson()},
                 label: {Text("Remove First")})

          Button(action: {viewModel.addPeople()},
                 label: {Text("Add")})
          
        }
        .padding()
      }
    }
}

#Preview {
    PeopleView()
}
