//
//  ProgressViewRepresentable.swift
//  OtusDZ1
//
//  Created by Yury Podkutin on 08.12.2021.
//

import UIKit
import SwiftUI

struct ProgressViewRepresentable: UIViewRepresentable {	
	func makeUIView(context: Context) -> UIProgressView {
		UIProgressView()
	}

	func updateUIView(_ uiView: UIProgressView, context: Context) {
		uiView.progress = Float.random(in: 0...1)
	}
}
