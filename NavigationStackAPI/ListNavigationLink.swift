//
//  ListNavigationLink.swift
//  NavigationStackAPI
//
//  Created by python on 03/11/23.
//

import SwiftUI

struct Customer: Identifiable, Hashable{
    var id = UUID()
    let name: String
}


struct CustomerView: View {
    
    let customer: Customer
    var body: some View {
        Text(customer.name)
    }
}

struct ListNavigationLink: View {
    
    let customers = [Customer(name: "John"), Customer(name: "Mohamed"), Customer(name: "Goush")]
    
    var body: some View {
        
        NavigationStack{
            
            List(customers){ customer in
                NavigationLink(customer.name, value: customer)
            }
            .navigationDestination(for: Customer.self) { customer in
                CustomerView(customer: customer)
            }
            
        }
    }
}

#Preview {
    ListNavigationLink()
}
