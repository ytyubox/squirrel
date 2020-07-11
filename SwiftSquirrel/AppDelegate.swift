//
//  AppDelegate.swift
//  SwiftSquirrel
//
//  Created by 游宗諭 on 2020/7/11.
//

import Cocoa
import InputMethodKit

private let kConnectionName = "Squirrel_1_Connection"

class SquirrelPanel: NSObject {
	
}
protocol SquirrelConfig {
	
}
protocol SquirrelApplicationDelegate {
	var menu:NSMenu! {get set}
	var panel:SquirrelPanel! {get set}
	var updater:Any! {get set}

	var config:SquirrelConfig {get}
//	var enableNotifications:Bool{get}

	func deploy(sender:Any)
	func syncUserData(sender:Any)
	func configure(sender:Any)
	func openWiki(sender:Any)

	func setupRime()
	func startRimeWithFullCheck(fullCheck:Bool)
	func loadSettings()
	func loadSchemaSpecificSettings(schemaId:String)

//	var problematicLaunchDetected:Bool {get}
}

@NSApplicationMain
class SquirrelAppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!
	@IBOutlet var menu: NSMenu!
	@IBOutlet var panel: SquirrelPanel!
	@IBOutlet var updater: Any!

	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Insert code here to initialize your application
	}

	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}


	var config: SquirrelConfig {
		fatalError()
	}
}
extension SquirrelAppDelegate:SquirrelApplicationDelegate {
	
	
//	var enableNotifications: Bool {
//		false
//	}
	
	func deploy(sender: Any) {
		
	}
	
	func syncUserData(sender: Any) {
		
	}
	
	func configure(sender: Any) {
		
	}
	
	func openWiki(sender: Any) {
		
	}
	
	func setupRime() {
		
	}
	
	func startRimeWithFullCheck(fullCheck: Bool) {
		
	}
	
	func loadSettings() {
		
	}
	
	func loadSchemaSpecificSettings(schemaId: String) {
		
	}
	
}


extension NSApplication {
	var  squirrelAppDelegate:SquirrelApplicationDelegate {
		delegate as! SquirrelApplicationDelegate
	}
}
