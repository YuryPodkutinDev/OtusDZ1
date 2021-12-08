//
//  FirstScreen.swift
//  OtusDZ1
//
//  Created by Yury Podkutin on 06.12.2021.
//

import SwiftUI

struct FirstScreen: View {
	@Binding var tabSelection: Int
	@Binding var selectionItem: Int?
    var body: some View {
		Button("Select second tab and second item") {
			self.tabSelection = 1
			self.selectionItem = 1
		}
    }
}

struct FirstScreen_Previews: PreviewProvider {
	@State static var tabSelection: Int = 0
	@State static var selectionItem: Int? = 0
    static var previews: some View {
        FirstScreen(tabSelection: $tabSelection, selectionItem: $selectionItem)
    }
}
