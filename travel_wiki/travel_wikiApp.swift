//
//  travel_wikiApp.swift
//  travel_wiki
//
//  Created by Umut Barış Çoşkun on 1.12.2021.
//

import SwiftUI

@main
struct travel_wikiApp: App {
     @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(
                        location: locations.primary)
                }.tabItem{
                Image(systemName:"airplane.circle.fill")
                    Text("Discover")
                      
                }
                
                NavigationView{
                    WorldView()
                }.tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                    
                }
                NavigationView{
                    TipsView()
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
