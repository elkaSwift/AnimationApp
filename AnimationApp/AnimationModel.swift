//
//  AnimationModel.swift
//  AnimationApp
//
//  Created by Елисей Мищенко on 12.01.2022.
//

import Spring

struct Animation {
    let animation: String
    let сurve: String
    let numberOfForce: Float
    let numberOfDuration: Float
    let numberOfDeley: Float
}

extension Animation {
    static func getAnimation() -> Animation {
        Animation(animation: getAnimation(),
                  сurve: getCurve(),
                  numberOfForce: Float.random(in: 0...1.5),
                  numberOfDuration: Float.random(in: 0...1.5),
                  numberOfDeley: Float.random(in: 0...1.5))
    }
}

extension Animation {
    static private func getAnimation() -> String {
        var animation = ""
        for i in Spring.AnimationPreset.allCases.shuffled() {
            animation = i.rawValue
        }
        return animation
    }
}

extension Animation {
    static private func getCurve() -> String {
        var curve = ""
        for i in Spring.AnimationCurve.allCases.shuffled() {
            curve = i.rawValue
        }
        return curve
    }
}
