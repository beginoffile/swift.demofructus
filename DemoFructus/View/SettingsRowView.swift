//
//  SettingRowView.swift
//  DemoFructus
//
//  Created by Aguid Ramirez Sanchez on 16/03/24.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(  Color.gray)
                Spacer()
                if (content != nil)
                {
                    Text(content!)
                }else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
            }
        }
    }
}

// MARK: PREVIEW
#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "John / Jane")
        SettingsRowView(name: "website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftmasterclass.com")
    }
}
