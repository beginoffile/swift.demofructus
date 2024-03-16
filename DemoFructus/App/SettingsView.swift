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
                    
                    //MARK: - SECTION 3
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
