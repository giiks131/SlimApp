//
//  UIView+Keyboard.swift
//  SlimApp
//
//  Created by Ekaterina Grishina on 12/01/23.
//

import SwiftUI

extension View {
    
    func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
