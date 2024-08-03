import SwiftUI

enum DesignSystem {
    enum Colors {
        static let blue01 = Color("Blue01")
        static let blue02 = Color("Blue02")
        static let blue03 = Color("Blue03")

        static let dark01 = Color("Dark01")
        static let dark02 = Color("Dark02")
        static let dark03 = Color("Dark03")
        static let dark04 = Color("Dark04")
        static let dark05 = Color("Dark05")
        static let dark06 = Color("Dark06")
        static let dark07 = Color("Dark07")

        static let green01 = Color("Green01")
        static let green02 = Color("Green02")
        static let green03 = Color("Green03")
        static let green04 = Color("Green04")

        static let orange01 = Color("Orange01")
        static let orange02 = Color("Orange02")
        static let orange03 = Color("Orange03")

        static let pink01 = Color("Pink01")
        static let pink02 = Color("Pink02")
        static let pink03 = Color("Pink03")
        
        static let purple01 = Color("Purple01")
        static let purple02 = Color("Purple02")
        static let purple03 = Color("Purple03")

        static let white = Color("White")

        static let yellow01 = Color("Yellow01")
        static let yellow02 = Color("Yellow02")
        static let yellow03 = Color("Yellow03")
    }
    
    enum Corners {
        static let xSmall: CGFloat = 5
        static let small: CGFloat = 10
        static let medium: CGFloat = 16
        static let large: CGFloat = 22
        static let xLarge: CGFloat = 35
        static let xxLarge: CGFloat = 42
    }

    enum Typography {
        static let caption2Regular = Font.system(size: 11, weight: .regular, design: .rounded)
        static let caption2Medium = Font.system(size: 11, weight: .medium, design: .rounded)
        static let caption2Semibold = Font.system(size: 11, weight: .semibold, design: .rounded)
        static let caption2Bold = Font.system(size: 11, weight: .bold, design: .rounded)
        
        static let caption1Regular = Font.system(size: 12, weight: .regular, design: .rounded)
        static let caption1Medium = Font.system(size: 12, weight: .medium, design: .rounded)
        static let caption1Semibold = Font.system(size: 12, weight: .semibold, design: .rounded)
        static let caption1Bold = Font.system(size: 12, weight: .bold, design: .rounded)
        
        static let footnoteRegular = Font.system(size: 13, weight: .regular, design: .rounded)
        static let footnoteMedium = Font.system(size: 13, weight: .medium, design: .rounded)
        static let footnoteSemibold = Font.system(size: 13, weight: .semibold, design: .rounded)
        static let footnoteBold = Font.system(size: 13, weight: .bold, design: .rounded)
        
        static let calloutRegular = Font.system(size: 16, weight: .regular, design: .rounded)
        static let calloutMedium = Font.system(size: 16, weight: .medium, design: .rounded)
        static let calloutSemibold = Font.system(size: 16, weight: .semibold, design: .rounded)
        static let calloutBold = Font.system(size: 16, weight: .bold, design: .rounded)
        
        static let bodyRegular = Font.system(size: 17, weight: .regular, design: .rounded)
        static let bodyMedium = Font.system(size: 17, weight: .medium, design: .rounded)
        static let bodySemibold = Font.system(size: 17, weight: .semibold, design: .rounded)
        static let bodyBold = Font.system(size: 17, weight: .bold, design: .rounded)
        
        static let headlineSemibold = Font.system(size: 17, weight: .semibold, design: .rounded)
        
        static let title3Regular = Font.system(size: 20, weight: .regular, design: .rounded)
        static let title3Medium = Font.system(size: 20, weight: .medium, design: .rounded)
        static let title3Semibold = Font.system(size: 20, weight: .semibold, design: .rounded)
        static let title3Bold = Font.system(size: 20, weight: .bold, design: .rounded)
        
        static let title2Regular = Font.system(size: 22, weight: .regular, design: .rounded)
        static let title2Medium = Font.system(size: 22, weight: .medium, design: .rounded)
        static let title2Semibold = Font.system(size: 22, weight: .semibold, design: .rounded)
        static let title2Bold = Font.system(size: 22, weight: .bold, design: .rounded)
        
        static let title1Regular = Font.system(size: 28, weight: .regular, design: .rounded)
        static let title1Medium = Font.system(size: 28, weight: .medium, design: .rounded)
        static let title1Semibold = Font.system(size: 28, weight: .semibold, design: .rounded)
        static let title1Bold = Font.system(size: 28, weight: .bold, design: .rounded)
        
        static let largeTitleRegular = Font.system(size: 34, weight: .regular, design: .rounded)
        static let largeTitleMedium = Font.system(size: 34, weight: .medium, design: .rounded)
        static let largeTitleSemibold = Font.system(size: 34, weight: .semibold, design: .rounded)
        static let largeTitleBold = Font.system(size: 34, weight: .bold, design: .rounded)
    }
}
