import Foundation
import UIKit

class FontManager: NSObject {
    public static let shared = FontManager()
    private override init() {}
    
    func getFonts() -> [Font] {
        var fontNames: [Font] = []
        
        for familyName in UIFont.familyNames {
            for name in UIFont.fontNames(forFamilyName: familyName) {
                fontNames.append(Font(familyName: familyName, fontName: name))
            }
        }

        return fontNames
    }
    
}
