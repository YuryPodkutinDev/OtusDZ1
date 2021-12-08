//
//  ContentView.swift
//  OtusDZ1
//
//  Created by Yury Podkutin on 06.12.2021.
//

import SwiftUI

struct ContentView: View {
	@State private var tabSelection = 0
	@State private var selectionItem: Int? = nil

    var body: some View {
		TabView(selection: $tabSelection) {
			FirstScreen(tabSelection: $tabSelection, selectionItem: $selectionItem)
				.tabItem({ Text("First") })
				.tag(0)
			SecondScreen(selectionItem: $selectionItem)
				.tabItem({ Text("Second") })
				.tag(1)
			ThirdScreen()
				.tabItem({ Text("Third") })
				.tag(2)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
