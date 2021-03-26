//
//  ContentView.swift
//  NASATest
//
//  Created by Ömer Faruk on 12.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {

                TabView {
                    CuriosityView()
                        .tabItem {
                            Image(systemName: "checkmark.circle")
                            Text("Curiosity")
                        }
                    
                    OpportunityView()
                        .tabItem {
                            Image(systemName: "checkmark.circle")
                            Text("Opportunity")
                        }
                    
                    SpiritView()
                        .tabItem {
                            Image(systemName: "checkmark.circle")
                            Text("Spirit")
                        }
                    
                }
            }.navigationBarItems(trailing: NavigationLink(destination: FilteringView(), label: {
                Text("Filter")
                    .foregroundColor(.orange)
            }))
            .navigationTitle("NASA")
        }
    }
}

struct FilteringView: View {
    
    @EnvironmentObject var filter: Filtering
    
    
    
    @State var FHAZ = false
    @State var RHAZ = false
    @State var MAST = false
    @State var CHEMCAM = false
    @State var MAHLI = false
    @State var MARDI = false
    @State var NAVCAM = false
    @State var PANCAM = false
    @State var MINITES = false

    
    var body: some View {
        
//        NavigationView {
            ScrollView {
                Toggle(isOn: $FHAZ) {
                    Text("FHAZ")
                }.padding(.horizontal)
                .onChange(of: FHAZ, perform: { value in
                    print(FHAZ)
                })
                Toggle(isOn: $RHAZ) {
                    Text("RHAZ")
                }.padding(.horizontal)
                Toggle(isOn: $MAST) {
                    Text("MAST")
                }.padding(.horizontal)
                Toggle(isOn: $CHEMCAM) {
                    Text("CHEMCAM")
                }.padding(.horizontal)
                Toggle(isOn: $MAHLI) {
                    Text("MAHLI")
                }.padding(.horizontal)
                Toggle(isOn: $MARDI) {
                    Text("MARDI")
                }.padding(.horizontal)
                Toggle(isOn: $NAVCAM) {
                    Text("NAVCAM")
                }.padding(.horizontal)
                Toggle(isOn: $PANCAM) {
                    Text("PANCAM")
                }.padding(.horizontal)
                Toggle(isOn: $MINITES) {
                    Text("MINITES")
                }.padding(.horizontal)
            }.navigationTitle("Filtering")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Filtering())
    }
}
