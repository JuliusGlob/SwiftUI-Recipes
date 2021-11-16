//
//  PullToRefresh.swift
//  NewIniOS15
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

struct PullToRefresh: View {
    
    @StateObject private var customerListVM = CustomerListViewModel()
    
    var body: some View {
        List(customerListVM.customers, id: \.self) { customer in
            Text(customer)
        }.onAppear {
            customerListVM.fetch()
        }.refreshable {
            customerListVM.fetch()
        }
    }
}

struct PullToRefresh_Previews: PreviewProvider {
    static var previews: some View {
        PullToRefresh()
    }
}
