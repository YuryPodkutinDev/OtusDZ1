//
//  ThirdScreen.swift
//  OtusDZ1
//
//  Created by Yury Podkutin on 06.12.2021.
//

import SwiftUI

struct ThirdScreen: View {
	@State private var showingModal = false

    var body: some View {
		Button("Open modal") {
			showingModal.toggle()
		}
		.sheet(isPresented: $showingModal) {
			ModalScreen()
		}
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
