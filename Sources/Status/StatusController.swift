import Cocoa

class StatusController: NSObject {

    @IBOutlet weak var menu: NSMenu!

    let item = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    override func awakeFromNib() {
        item.title = "✽"
        item.menu = menu
    }

    @IBAction func handleQuitHit(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
}
