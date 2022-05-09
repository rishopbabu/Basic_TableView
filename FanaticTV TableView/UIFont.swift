//
//  UIFont.swift
//  FanaticTV
//
//  Created by Dineshkumar Kandasamy on 20/12/21.
//  Copyright © 2022 fanaticTV. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
	
	//MARK:- Ubuntu
	
	class func semibold_hellix(_ size: CGFloat) -> UIFont {
		return UIFont(name: "Hellix-SemiBold", size: size)!
	}
	
	class func bold_hellix(_ size: CGFloat) -> UIFont {
		return UIFont(name: "Hellix-Bold", size: size)!
	}
	
	class func light_hellix(_ size: CGFloat) -> UIFont {
		return UIFont(name: "Hellix-Light", size: size)!
	}
	
	class func medium_hellix(_ size: CGFloat) -> UIFont {
			return UIFont(name: "Hellix-Medium", size: size)!
	}
	
	class func regular_hellix(_ size: CGFloat) -> UIFont {
			return UIFont(name: "Hellix-Regular", size: size)!
	}
	
}
