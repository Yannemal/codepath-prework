//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by yann guyt on 11/04/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

    
    struct K {
        // static -> type property, no init required K.appName == "String" no more typos
        static let appName = "⚡️FlashChat"
        static let cellIdentifier = "ReusableCell"
        static let cellNibName = "MessageCell"
        static let registerSegue = "RegisterToChat"
        static let loginSegue = "LogInToChat"
        
        struct BrandColors {
            static let purple = "BrandPurple"
            static let lightPurple = "BrandLightPurple"
            static let blue = "BrandBlue"
            static let lighBlue = "BrandLightBlue"
        }
        
        struct FStore {
            static let collectionName = "messages"
            static let senderField = "sender"
            static let bodyField = "body"
            static let dateField = "date"
        }
    }



// static means its useable as .dotnotation immediately initialised ! 
// otherwise we would first have to create an instance of this struct >  let myConstants = Constants()  to gain access to its strings.
