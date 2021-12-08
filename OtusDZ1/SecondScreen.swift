//
//  SecondScreen.swift
//  OtusDZ1
//
//  Created by Yury Podkutin on 06.12.2021.
//

import SwiftUI

struct SecondScreen: View {
	@Binding var selectionItem: Int?
	
    var body: some View {
		NavigationView {
			List() {
				NavigationLink(destination: Text("First item details"), tag: 0, selection: $selectionItem) {
					Text("First item")
				}
				NavigationLink(destination: Text("Second item details"), tag: 1, selection: $selectionItem) {
					Text("Second item")
				}
				NavigationLink(destination: Text("Third item details"), tag: 2, selection: $selectionItem) {
					Text("Third item")
				}
			}
			.navigationTitle("Second screen")
		}
    }
}

struct SecondScreen_Previews: PreviewProvider {
	@State static var selectionItem: Int?
    static var previews: some View {
		SecondScreen(selectionItem: $selectionItem)
    }
}
