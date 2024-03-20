//
//  SettingsView.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 16/03/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators:false){
                VStack(spacing: 20, content: {
                    //MARK: - SECTION 1
                    GroupBox(label: 
                     SettingsLabelView(labelText: "fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiberm vitamins, and much more.")
                                .font(.footnote)
                        })
                    }
                    
                    //MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Cutomization", labelImage: "paintbrush")) {
                            Divider().padding(.vertical, 4)
                            Text("If you wish, you can restart the application by toggle the switch in this box. That way it start onboarding process and you will see th welcome screen again")
                                .padding(.vertical, 8)
                                .frame(minWidth: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Toggle(isOn: $isOnboarding.animation(
                                .easeOut(duration: 2.5)
                            )) {
                               
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.secondary)
                                }
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        }
                    
                    //MARK: - SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                            
                            SettingsRowView(name: "Developer", content: "Cesar Paez")
                            SettingsRowView(name: "Designer", content: "Robert Petras")
                            SettingsRowView(name: "Compatibility", content: "IOS 17")
                            SettingsRowView(name: "Website", linkLabel: "Swift developer", linkDestination:"github.com/beginoffile")
                            SettingsRowView(name: "Twitter", linkDestination: "twitter.com/x")
                            SettingsRowView(name: "SwiftUI", content: "2.0")
                            SettingsRowView(name: "Version", content: "1.1.0")
                        }
                })//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Image(systemName: "xmark")
                }))
                .padding()
            } //: SCROLLVIEW
        }//: NAVIGATIONVIEW
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsView()
}
