//
//  ContentView.swift
//  BaJProjetson
//
//  Created by Maguette SECK on 26/01/2023.


import SwiftUI

struct ContentView: View {
    @StateObject var dataLoader:ListPersonViewModel=ListPersonViewModel()
//    @State private var showModal2 = false
  

    var body: some View {
        

        VStack {
            
            HStack{
                
         
                
            }.padding(.bottom )
            
            HStack{
                            PersonList( )
                

                
                
            
            }
            
        
        }
        .environmentObject(dataLoader)
        .padding()
        
    }
    struct PersonList: View {
      
        @EnvironmentObject var dataLoader:ListPersonViewModel
        
        @State private var showModal = false

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
                        .frame(width: 50, height: 50)
                        Text(person.nomComplet)
                        Spacer()
                        Text(person.direction)
    //
    //
                    }
  
                    
                }
                
                .onAppear {
                    self.dataLoader.loadData()
    //                self.people = people
                }
    
                    
                    Button(" SignUp") {
                             self.showModal = true
                         }
                         .sheet(isPresented: $showModal) {
                             formulaire()
                         }
                    
                .padding(.top,300)
                
                
    //            fin vstack

            }
        }
    }

    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//

