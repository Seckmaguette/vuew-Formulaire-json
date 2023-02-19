//
//  modele.swift
//  BaJProjetson
//
//  Created by Maguette SECK on 26/01/2023.
//

import Foundation

struct Person: Codable , Identifiable   {

let id: Int
let avatar: String
let nomComplet: String
let email: String
let profession: String
let service: String
let departement: String
let direction: String
//
//let profil: Profil
//
//
//    struct Profil: Codable , Identifiable{
//    let id: Int
//    let libelle: String
//    }

    
    
    init(id: Int,avatar: String, nomComplet: String,email: String, profession: String, service: String, departement: String, direction: String) {
        
       
self.id = id
        
       
self.avatar = avatar
        
       
self.nomComplet = nomComplet
        
       
self.email = email
        
       
self.profession = profession
        
       
self.service = service
        
       
self.departement = departement
        
       
self.direction = direction
        
        
        
    }
}

//func ok(){
//
//let urlString = "https://example.com/api/users/\(user.id)"
//let url = URL(string: urlString)!
//
//
//
//request.httpMethod = var request = URLRequest(url: url)
//
//
//
//request.httpBody = data
//request.setValue("PUT"
//
//
//
//let encoder = JSONEncoder()
//let data = try! encoder.request.encode(user)
//
//request.httpBody = data
//request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//let session = URLSession.shared
//let task = session.dataTask(with: request) { (data, response, error) in
//
//
//// Handle the response here
//}
//
//task.resume()
//
//
//                 }

//var body
//
//
//  var
//
//              TextField("Full Name", text: $user.nomComplet)
//
//              TextField("Full Name", text: $user.nomComplet)
//
//
//              TextField("Full Name", text: $user.nomComplet)
//
//              TextField("Full Name", text: $user.nomComplet
//
//              TextField("Full Name", text: $user.nomCom
//
//              TextField("Full
//
//              TextField("
//
//          }
//
//              TextField("Profession", text: $user.profession)
//
//              TextField("Profession", text: $user.profession)
//
//
//              TextField("Profession", text: $user.profession)
//
//              TextField("Profession", text
//
//              TextField("Profession",
//
//
//
//          }
//          struct EditUserView: View {
//  @Binding var user: User
//
//  var body: some View {
//      Form {
//          Section(header: Text("Personal Information")) {
//              TextField("Full Name", text: $user.nomComplet)
//              TextField("Email", text: $user.email)
//          }
//          Section(header: Text("Professional Information")) {
//              TextField("Profession", text: $user.profession)
//              TextField("Service", text: $user.service)
//              TextField("Departement", text: $user.departement)
//              TextField("Direction", text: $user.direction)
//          }
//          Button("Save", action: {
//              // Call the PUT request method here to update the user object on the server.
//          })
//      }
//      .navigationBarTitle("Edit User")
//  }
//}

