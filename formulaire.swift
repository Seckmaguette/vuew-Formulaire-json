//
//  formulaire.swift
//  BaJProjetson
//
//  Created by Maguette SECK on 27/01/2023.
//

import Foundation
//
//  ContentView.swift
//  PageConnexion
//
//  Created by Maguette SECK on 05/01/2023.
//

import SwiftUI
var CorrectName = "Mag"
var correctPass = "ab"

//var ecritureCOUleur = Color(.black)
//var jsonArray:[String]=[]
//
//
////var monTab = [1:"awa",
////              2:"mangane",
////              3:"Ba",
////              4:"Mag"]
////var nosTab = [1,2,4,5,7]
//
////var database: [String] = [CorrectName,correctPass]

var database: [String:String] = ["login":CorrectName,"password":correctPass]
//
////dat

//struct Suggestion: Codable {
//  let kind: String
//  let searchTerm: String
//  let displayTerm: String
//}
//
//let suggestionResponse = """
//    {
//      "kind":"terms",
//      "searchTerm":"the weeknd",
//      "displayTerm":"the weeknd"
//    }
//"""
//
//let suggestionData = Data(suggestionResponse.utf8)
//print(suggestion)
//let suggestion = try JSONDecoder().decode(Suggestion.self, from: suggestionData)


// MARK: - OUTPUT


struct ContentView: View {
    @State var userName:String = ""
    @State var myPassWord:String = ""
    @State var AuthentifationSucess: Bool = false
    @State var AuthentifationFailed: Bool = false

    
    var body: some View {
       
        ZStack{
            VStack {
                
                samaTest()
                samaImage()
                monTextfield(username: $userName)
                    
            
                monSecureFiel(myPassWord: $myPassWord)
                    .padding(.vertical, 22.0)
                
                if AuthentifationFailed{
                    Text("saisi incorrect")
                        .foregroundColor(.red)
                        .offset(y:-10)
                }
               
                Button(action:{
                    for db in database{
                        print(db)
                        
                        
                        if self.userName == CorrectName && self.myPassWord == correctPass {
                            self.AuthentifationSucess = true
                            self.AuthentifationFailed = false
                            
                            
                        }else{
                            self.AuthentifationFailed = true
                            self.AuthentifationSucess = false
                        }
                    }
//                    }
                  
                })
                {
                    
                loginConnexion()
                    
                }
                
            }
            
            
            
//            fermuture vStack
            .padding()
            if AuthentifationSucess{
                Text("réussie")
                    .padding()
                    .foregroundColor(.green)
                    .offset(y:222)
//              cornerRadius(20.0)
//                frame(width: 200,height: 80)
////                    background(.green)
////                    animation(Animation.default)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

struct samaTest: View {
    var body: some View {
        Text("Welcome in the World of Developer")
            .multilineTextAlignment(.center)
            .fontWeight(.semibold)
            .font(.largeTitle)
            .padding(.bottom,55)
       
       
    
    }
}

struct samaImage: View {
    var body: some View {
        Image("max")
            .resizable()
            .frame(width:150, height: 150)
            .clipped()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(150)
            .padding(.bottom,75)
    }
}

struct loginConnexion: View {
    var body: some View {
        Text("Connexion")
            .padding()
            .frame(width: 250,height: 50)
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(25.0)
    }
}

struct  monTextfield: View {
    @Binding var username:String
    var body: some View {
        TextField("Votre Nom SVP", text: $username)
            .frame(height: 45)
            .frame(width: 260)

            .overlay( RoundedRectangle(cornerRadius:5)
            .strokeBorder(Color.black,lineWidth: 2))
//            .padding()
//            .border(.black)
//            .padding(.bottom,20.0)
//            .frame(width: 355, height: 75)
            .foregroundColor(Color.black)
            
//            .textFieldStyle(.roundedBorder)
            .background(Color.white)
//            .cornerRadius(35)
    }
}

struct  monSecureFiel: View {
    @Binding var myPassWord:String
    var body: some View {
        SecureField("Votre Pwd SVP", text: $myPassWord)
//.overlay( RoundedRectangle(cornerRadius:5) permet de faire des raduis sur textfield
            .frame(height: 45)
            .frame(width: 260)

            .overlay( RoundedRectangle(cornerRadius:5)
            .strokeBorder(Color.black,lineWidth: 2))
        
//            .border(.black)
        
                    
//            .textFieldStyle(.roundedBorder)
//            .cornerRadius(30.0)
//            .background(.white)
            
//            .padding(.bottom,20.0)
//            .frame(width: 355, height: 75)
            .foregroundColor(Color.black)
            .background(Color.white)
          
            
    }
}

