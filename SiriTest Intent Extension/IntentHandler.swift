//
//  IntentHandler.swift
//  SiriTest Intent Extension
//
//  Created by Aaron Wojnowski on 2024-08-09.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
    
}

extension IntentHandler: INPlayMediaIntentHandling {
    
    func handle(intent: INPlayMediaIntent, completion: @escaping (INPlayMediaIntentResponse) -> Void) {
        let response = INPlayMediaIntentResponse(code: .continueInApp, userActivity: nil)
        completion(response)
    }
    
}
