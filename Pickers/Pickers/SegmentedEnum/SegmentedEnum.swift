//
//  SegmentedEnum.swift
//  Pickers
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI

enum Roles: CaseIterable {
    case student
    case staff
    case faculty
}
extension Roles {
    var title: String {
        switch self {
            
        case .student:
            return "Student"
        case .staff:
            return "Staff"
        case .faculty:
            return "Faculty"
        }
    }
    
}

struct SegmentedEnum: View {
    @State var selectedRole: Roles = .student
    var body: some View {
        VStack {
            Picker("Select", selection: $selectedRole) {
                ForEach(Roles.allCases, id: \.self) { role in
                    Text(role.title).tag(role)
                } // here we use the enum as the role
            
            }.pickerStyle(.segmented)
            // then display the role's title
            Text(selectedRole.title)
        }
    }
}

struct SegmentedEnum_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedEnum()
    }
}
