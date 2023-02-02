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
    
    func validate(person :[Person]){
//        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first! )
        
        let desktop = URL(fileURLWithPath: "/Users/STG_SECK69085/Documents/TryAgain/BaJProjetson/BaJProjetson")

        do {
            let temporaryDirectory = try FileManager.default.url(
                for: .itemReplacementDirectory,
                in: .userDomainMask,
                appropriateFor: desktop,
                create: false
            )
            
            print(temporaryDirectory)
        } catch {
            // Handle the error.
        }
         
            if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
                let fileURL = documentsDirectory.appendingPathComponent("koori.json")
                //let desktop = URL(fileURLWithPath: "/Users/STG_SECK69085/Documents/TryAgain/BaJProjetson/BaJProjetson/koori.json")

                do {
                    let data = try JSONEncoder().encode([person])
                    try data.write(to: fileURL)
                    print("File saved successfully!")
                } catch {
                    print("Failed to save file: \(error.localizedDescription)")
                }
            }
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
