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
      ForEach(viewModel.people){ person in

        HStack {
          Text(person.name)
            .font(.title)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
          Spacer()
          
          VStack(alignment: .trailing){
            Text(person.phoneNumber)
            Text(person.email)
          }
      }

      }
    }
}

#Preview {
    PeopleView()
}
