//
//  SideMenuOptionView.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel: SideMenuOptionViewModel
    var body: some View {
        HStack {
            Image(systemName: viewModel.imageName)
                .font(.title2)
                .imageScale(.medium)
            
            Text(viewModel.title)
                .font(.system(size: 16, weight: .semibold))
            
            Spacer()
        }
        .foregroundColor(Color.theme.primararyTextColor)
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .trips)
    }
}
