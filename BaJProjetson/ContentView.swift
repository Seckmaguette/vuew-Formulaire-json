//
//  ContentView.swift
//  BaJProjetson
//
//  Created by Maguette SECK on 26/01/2023.


import SwiftUI

struct ContentView: View {
    @State private var showModal = false
    

    var body: some View {
//        Image(systemName: "plus.circle")
//        @State private var isLinkActive = false
        Button(" SignUp") {
                 self.showModal = true
             }
             .sheet(isPresented: $showModal) {
                 formulaire()
             }

        VStack {
            
            HStack{
                
         
//            NavigationView {
//                       VStack {
//                           NavigationLink(destination: formulaire()) {
//                               Text("SignUP").fontWeight(.bold)
//                           }
//                       }
//                   }
           
                
            }.padding(.bottom ,150)
            
            HStack{
                            PersonList( )
                

                
                
            
            }
            
        
        }
        .padding()
        
    }
}

struct PersonList: View {
    @ObservedObject var dataLoader = ListPersonViewModel()

    var body: some View {
        

        ZStack{
         
            
            Text("LIte Of Koori")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            List(dataLoader.people) { person in
                HStack{
                    AsyncImage(url: URL(string: "\(person.avatar)")) { image in
                        image.resizable()
                            .frame(width:50, height: 50)

                            .clipped()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(150)
                            .padding(.bottom,3)

                    } placeholder: {
                        ProgressView()
                    }
                  
                    Text(person.nomComplet)
                    Spacer()
                    Text(person.direction)
//
//
                }
            }
            .onAppear {
                self.dataLoader.loadData()
            }
            
//            fin vstack
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//

