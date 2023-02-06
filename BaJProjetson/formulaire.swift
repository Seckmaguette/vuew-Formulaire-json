//
//  formulaire.swift
//  BaJProjetson
//
//  Created by Maguette SECK on 27/01/2023.
//

import SwiftUI
//










struct formulaire: View {
//    @ObservedObject var dataLoader = ListPersonViewModel()
    @EnvironmentObject var dataLoader:ListPersonViewModel
    
    
//    @State var id:String = ""
//    @State var avatar:String = ""
    @State var userName:String = ""
    @State var adress:String = ""
    @State var profession:String = ""
    @State var service:String = ""
    @State var departement:String = ""
    @State var direction:String = ""
    
    var body: some View {
        NavigationView() {
        ZStack{
            VStack {
            
                    samaTest()
                    //                monTextfield1(id: $id)
                    //                monTextfield0(avatar: $avatar)
                    monTextfield(username: $userName)
                    monTextfield2(adress: $adress)
                    monTextfield3(profession: $profession)
                    monTextfield4( service: $service)
                    monTextfield5( departement: $departement)
                    monTextfield6(direction: $direction)
                    
                        .padding(.vertical, 22.0)
                    
                    
                    
                    Button(action:{
                        
                        let person = Person (id:18,avatar:userName , nomComplet:userName , email: adress , profession:profession , service: service, departement: departement, direction:direction)
                   dataLoader.people.append(person)
                        print("vous avez ajoutez \([dataLoader.people]) maintenant je l'evoie sur valider")
            
                        dataLoader.validate()
                        
                    })
                    {
                        
                        loginConnexion()
                        
                    }
                    
                }
                
                
                
                //            fermuture vStack
                .padding()
            }
        .navigationTitle("New Contact")
        .navigationBarTitleDisplayMode(.inline)
        }
//        vstack
    }
}

struct formulaire_Previews:PreviewProvider {
        static var previews: some View {
            formulaire()

        }
    }

struct samaTest: View {
    var body: some View {
        Text("Bienvenue au Lab")
            .multilineTextAlignment(.center)
            .fontWeight(.semibold)
            .font(.largeTitle)
            .padding(.bottom,55)
       
       
    
    }
}



struct loginConnexion: View {
    var body: some View {
        Text("Enregistrer")
            .padding()
            .frame(width: 250,height: 50)
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(25.0)
    }
}

//struct  monTextfield0: View {
//    @Binding var avatar:String
//    var body: some View {
//        TextField("avatar", text: $avatar)
//            .frame(height: 45)
//            .frame(width: 260)
//
//            .overlay( RoundedRectangle(cornerRadius:5)
//            .strokeBorder(Color.black,lineWidth: 2))
////            .padding()
////            .border(.black)
////            .padding(.bottom,20.0)
////            .frame(width: 355, height: 75)
//            .foregroundColor(Color.black)
//
////            .textFieldStyle(.roundedBorder)
//            .background(Color.white)
////            .cornerRadius(35)
//    }
//}

struct  monTextfield: View {
    @Binding var username:String
    var body: some View {
        TextField("nomcomplet", text: $username)
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

//struct  monTextfield1: View {
//    @Binding var id:String
//    var body: some View {
//        TextField("id", text: $id)
//            .frame(height: 45)
//            .frame(width: 260)
//
//            .overlay( RoundedRectangle(cornerRadius:5)
//            .strokeBorder(Color.black,lineWidth: 2))
////            .padding()
////            .border(.black)
////            .padding(.bottom,20.0)
////            .frame(width: 355, height: 75)
//            .foregroundColor(Color.black)
//
////            .textFieldStyle(.roundedBorder)
//            .background(Color.white)
////            .cornerRadius(35)
//    }
//}



struct  monTextfield2: View {
    @Binding var adress:String
    var body: some View {
        TextField("mail", text: $adress)
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

struct  monTextfield3: View {
    @Binding var profession:String
    var body: some View {
        
        
        Picker("\nProfession", selection: $profession){
            Text("Informatique").tag("informaticien")
            Text("Docteur").tag("Docteur")
            Text("Comptablite").tag("Comptble")
            Text("Programmation").tag("programmeur")
        }.pickerStyle(.automatic)
            .foregroundColor(Color.black)
            .frame(height: 45)
            .frame(width: 260)

            .overlay( RoundedRectangle(cornerRadius:5)
            .strokeBorder(Color.black,lineWidth: 2))
            .foregroundColor(Color.black)
            .background(Color.white)
//        TextField("profession", text: $profession)
//            .frame(height: 45)
//            .frame(width: 260)
//
//            .overlay( RoundedRectangle(cornerRadius:5)
//            .strokeBorder(Color.black,lineWidth: 2))
////            .padding()
////            .border(.black)
////            .padding(.bottom,20.0)
////            .frame(width: 355, height: 75)
//            .foregroundColor(Color.black)
//
////            .textFieldStyle(.roundedBorder)
//            .background(Color.white)
//            .cornerRadius(35)
    }
}

struct  monTextfield4: View {
    @Binding var service:String
    var body: some View {
//        TextField("service", text: $service)
        Picker("Service", selection: $service){
            Text("SERVICE KOORI").tag("AB")
            Text("SERVICE COMMERCIAL").tag("service commercial")
            Text("SERVICE COMPTABLE").tag("Service Comptable")
            Text("Service RH").tag("Service des ressource humaine")
        }.pickerStyle(.automatic)
            .frame(height: 45)
            .frame(width: 260)

            .overlay( RoundedRectangle(cornerRadius:5)
            .strokeBorder(Color.black,lineWidth: 2))
            .foregroundColor(Color.black)
            .background(Color.white)
//            .frame(height: 45)
//            .frame(width: 260)
//
//            .overlay( RoundedRectangle(cornerRadius:5)
//            .strokeBorder(Color.black,lineWidth: 2))
////            .padding()
////            .border(.black)
////            .padding(.bottom,20.0)
////            .frame(width: 355, height: 75)
//            .foregroundColor(Color.black)
//
////            .textFieldStyle(.roundedBorder)
//            .background(Color.white)
////            .cornerRadius(35)
    }
}

struct  monTextfield5: View {
    @Binding var departement:String
    var body: some View {
        
        Picker("Selection votre departement", selection: $departement){
            Text("SERVICE KOORI").tag("SILAB")
            Text("SERVICE COMMERCIAL").tag("service commercial")
            Text("SERVICE COMPTABLE").tag("Service Comptable")
            Text("Service RH").tag("Service des ressource humaine")
        }.pickerStyle(.automatic)

            
//        TextField("departement", text: $departement)
            .frame(height: 45)
            .frame(width: 260)

            .overlay( RoundedRectangle(cornerRadius:5)
            .strokeBorder(Color.black,lineWidth: 2))
//
//            .overlay( RoundedRectangle(cornerRadius:5))
//            .strokeBorder(Color.black,lineWidth: 2))
////            .padding()
////            .border(.black)
////            .padding(.bottom,20.0)
////            .frame(width: 355, height: 75)
            .foregroundColor(Color.black)
//
//            .textFieldStyle(.roundedBorder)
            .background(Color.white)
//            .cornerRadius(35)
    }
}


struct  monTextfield6: View {
    @Binding var direction:String
    var body: some View {
        
        Picker("Selection votre direction", selection: $direction){
            Text("DSI").tag("dsi")
            Text("DSC").tag("dsc")
            Text("DC").tag("dc")
            Text("DRH").tag("drh")
        }.pickerStyle(.automatic)
        
            .frame(height: 45)
            .frame(width: 260)

            .overlay( RoundedRectangle(cornerRadius:5)
            .strokeBorder(Color.black,lineWidth: 2))
            .foregroundColor(Color.black)
            .background(Color.white)
//        TextField("direction", text: $direction)
//            .frame(height: 45)
//            .frame(width: 260)
//
//            .overlay( RoundedRectangle(cornerRadius:5)
//            .strokeBorder(Color.black,lineWidth: 2))
////            .padding()
////            .border(.black)
////            .padding(.bottom,20.0)
////            .frame(width: 355, height: 75)
//            .foregroundColor(Color.black)
//
////            .textFieldStyle(.roundedBorder)
//            .background(Color.white)
////            .cornerRadius(35)
    }
}





