//
//  ViewModel.swift
//  BaJProjetson
//
//  Created by Maguette SECK on 26/01/2023.
//

import Foundation


class ListPersonViewModel: ObservableObject {
    @Published var people: [Person] = []

    func loadData() {
            if let url = Bundle.main.url(forResource: "koori", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    people = try decoder.decode([Person].self, from: data)
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }
// la methode  addPerson permet   ajouter un nouveau objet
    
      func addPerson(person: Person){
         
          people.append(person)
      }
    
    func validate(){

        if let url = Bundle.main.url(forResource: "koori", withExtension: "json"){
                   do{
                       let encoderData = try JSONEncoder().encode(people)
                       let jsonString = String(data: encoderData, encoding: .utf8)
                       
                       print(" objet json a été bien encoder \(String(describing: jsonString))")
                       try encoderData.write(to: url)
                       print("\n \(url)")
                       
                   }catch{
                       print("je peux pas poster car cette \(error)")
                   }
               }else{
                   print("je suis sortie car je vous pas le chemin")
               }

//            if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//                let fileURL = documentsDirectory.appendingPathComponent("koori.json")
//                print("le file to url : \(fileURL)")
//                //let desktop = URL(fileURLWithPath: "/Users/STG_SECK69085/Documents/TryAgain/BaJProjetson/BaJProjetson/koori.json")
//
//                do {
//                    let data = try JSONEncoder().encode(people)
//                    try data.write(to: fileURL)
//                    print(" objet json encode \(data)")
//                    print("File saved successfully!")
//                } catch {
//                    print("Failed to save file: \(error.localizedDescription)")
//                }
//            }
//
        }

    }
    

//
//let encoder = JSONEncoder()
//
//let encoder = JSONEncoder()
//
//do {
//  let data = try encoder.encode(person)
//
//  try data.write(to: URL(fileURLWithPath: "koori.json"))
//} catch {
//  print("Error encoding or saving data: \(error.localizedDescription)")
//}
