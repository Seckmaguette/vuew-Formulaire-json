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
    func copyFileFromBundleToDocumentsFolder(sourceFile: String, destinationFile: String = "/Users/STG_SECK69085/Desktop/koori.json") {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first

        if let documentsURL = documentsURL {
            let sourceURL = Bundle.main.bundleURL.appendingPathComponent(sourceFile)

            // Use the same filename if destination filename is not specified
            let destURL = documentsURL.appendingPathComponent(!destinationFile.isEmpty ? destinationFile : sourceFile)

            do {
                try FileManager.default.removeItem(at: destURL)
                print("Removed existing file at destination")
            } catch (let error) {
                print(error)
            }

            do {
                try FileManager.default.copyItem(at: sourceURL, to: destURL)
                print("\(sourceFile) was copied successfully.")
            } catch (let error) {
                print(error)
            }
        }
    }
    
    
// la methode  addPerson permet   ajouter un nouveau objet
    
      func addPerson(person: Person){
         
          people.append(person)
      }
    
    func validate(){
        
//        outputFormatting = .prettyPrinted  permet une belle forma json
//celle ci va ecrire le fichier sur le document pas dans le json
//        copyFileFromBundleToDocumentsFolder(sourceFile: "/Users/STG_SECK69085/Desktop/")
//
//
//        if let url = Bundle.main.url(forResource: "koori", withExtension: "json"){
//                   do{
//                       let encoderData = try JSONEncoder().encode(people)
//                       let jsonString = String(data: encoderData, encoding: .utf8)
//                       print(" objet json a été bien encoder \(jsonString)")
//                       try encoderData.write(to: url)
//                       print(url)
//
//                   }catch{
//                       print("je peux pas poster car cette \(error)")
//                   }
//               }else{
//                   print("je suis sortie car je vous pas le chemin")
//               }
     
//        let jsonEncoder = JSONEncoder()
//          jsonEncoder.outputFormatting = .prettyPrinted
//          do {
//              let jsonData = try jsonEncoder.encode(people)
//              let jsonString = String(data: jsonData, encoding: .utf8)!
//              print("Données encodées en JSON : \(jsonString)")
//              let fileManager = FileManager.default
//              if let documentsDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first {
//                  let fileURL = documentsDirectory.appendingPathComponent("koori.json")
//                  try jsonData.write(to: fileURL)
//                  print("Données enregistrées avec succès dans le fichier koori.json")
//              }
//          }
//
//      catch {
//              print("Erreur lors de l'écriture des données dans le fichier : \(error)")
//          }
        
            let jsonEncoder = JSONEncoder()
        
                 jsonEncoder.outputFormatting = .prettyPrinted
        do {
            let jsonData = try jsonEncoder.encode(people)
            let json = String(data: jsonData, encoding: .utf8)!
            print("Données encodées en JSON : \(json)")
            let fileURL = URL(fileURLWithPath: "/Users/STG_SECK69085/Documents/TryAgain/BaJProjetson/BaJProjetson/koori.json")
            try json.write(to: fileURL, atomically: true, encoding: .utf8)
        
            print("Données enregistrées avec succès dans le fichier koori.json: \(fileURL)")
        } catch {
            print("Error writing data to file: \(error)")
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
