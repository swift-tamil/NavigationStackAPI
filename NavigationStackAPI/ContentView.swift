//
//  ContentView.swift
//  NavigationStackAPI
//
//  Created by python on 03/11/23.
//

import SwiftUI

struct SimpleView: View {
    
    let value: Int;
    
    var body: some View {
        //        Text("Alhamthulillah")
        Text("\(value)")
    }
}

struct ContentView: View {
    
 
    var body: some View {
        
        //        NavigationStack{
        //
        //            NavigationLink("Details View"){
        //                Text("Alhamthulillah")
        //            }
        //        }
        
        //        NavigationStack{
        //
        //            NavigationLink {
        //                SimpleView()
        //            } label: {
        //                Image(systemName: "heart.fill")
        //                    .foregroundStyle(.red)
        //                    .font(.largeTitle)
        //            }
        //
        //        }
        
        
                NavigationStack{
        
                    NavigationLink("SimpleVIew", value: 99)
                        .navigationDestination(for: Int.self) { value in
                            SimpleView(value: value)
                        }
                }
        
      
        
    }
}

#Preview {
    ContentView()
}
