//
//  Alert+Error.swift
//  Socially Apt
//
//  Created by Joshua Butler on 3/11/24.
//

import SwiftUI

extension View {
    func alert(_ title: String, error: Binding<Error?>) -> some View {
        modifier(AlertViewModifier(title: title, error: error))
    }
}

private struct AlertViewModifier: ViewModifier {
    let title: String
    @Binding var error: Error?
    
    func body(content: Content) -> some View {
        content
            .alert(title, isPresented: $error.hasValue, presenting: error, actions: { _ in }) { error in
                Text(error.localizedDescription)
            }
    }
}

private extension Optional {
    var hasValue: Bool {
        get { self != nil }
        set { self = newValue ? self : nil }
    }
}

struct AlertViewModifier_Previews: PreviewProvider {
    private static let error = NSError(domain: "PreviewError", code: 0, userInfo: nil)
    
    static var previews: some View {
        Text("Preview")
            .alert("Error", error: .constant(error))
    }
}
