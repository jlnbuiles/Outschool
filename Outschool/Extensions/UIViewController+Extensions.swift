//
//  UIViewController+Extensions.swift
//  Outschool
//
//  Created by Julian Builes on 12/30/21.
//
// Partially taken from RocketReserver Apollo sample by Ellen Shapiro. 12/7/19.

import UIKit

extension UIViewController {
    
    // Shows an alert with the given title and message and an "OK" button to dismiss
    //
    // - Parameters:
    //   - title: The title to display
    //   - message: The message to display
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    func handleServerError(withMessage: String) {
        print("SERVER FAILURE: " + withMessage)
        showAlert(title: "Server Error (Our bad)",
                  message: "An unknown error ocurred in our system. Please let us know if the error persists.")
    }
}
