//
//  AccountView.swift
//  DesignCodeIOS15
//
//  Created by Gulliver Raed on 5/28/25.
//

import SwiftUI

struct AccountView: View {
    
    @State var isDeleted = false
    
    var body: some View {

        NavigationView {

            List {
                
                VStack(spacing: 8) {
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(
                            Image(systemName: "hexagon")
                                .symbolVariant(.fill)
                                .foregroundStyle(.blue)
                                .font(.system(size: 200))
                                .offset(x: -50, y: -100)
                        )

                    Text("Givo")
                        .font(.title.weight(.semibold))

                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .imageScale(.large)

                        Text("Alexandria")
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding()

                Section {
                    NavigationLink(
                        destination: ContentView(),
                        label: {
                            Label("Settings", systemImage: "gear")
                        })
                    
                    NavigationLink(
                        destination: ContentView(),
                        label: {
                            Label("Billing", systemImage: "creditcard")
                    })
                    
                    NavigationLink(
                        destination: ContentView(),
                        label: {
                            Label("Help", systemImage: "questionmark.circle")
                    })
                    
                }
                .foregroundStyle(.primary)
                .listRowSeparator(.hidden)
                
                Section {
                    
                    if !isDeleted {
                        Link(destination: URL(string: "https://apple.com")!) {
                            HStack {
                                Label("Website", systemImage: "house")
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button {
                                isDeleted = true
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)
                            Button {
                                
                            } label: {
                                Label("Pin", systemImage: "pin")
                            }
                            .tint(.yellow)

                            
                        }
                    }
                    
                    Link(destination: URL(string: "https://youtube.com")!) {
                        HStack{
                            Label("Youtube", systemImage: "tv.fill")
                            Spacer()
                            Image(systemName: "link")
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .listRowSeparator(.hidden)
                .foregroundStyle(.primary)

            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }

    }
}

#Preview {
    AccountView()
}

#Preview {
    AccountView()
        .colorScheme(.dark)
}
