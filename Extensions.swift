


extension UIViewController {
    // share link
    func sharelink(title: String, link: String) {
        
        let activityController = UIActivityViewController(activityItems: [title,"\r\n\(link)"], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = self.view
        present(activityController, animated: true, completion: nil)
    }
    
    /*
     // Using
     sharelink(title: "", link: "")
     */
}

// make Phone Call
extension UIViewController {
    func makePhoneCall(phoneNumber: String) {
        if let phoneURL = NSURL(string: ("tel://" + phoneNumber)) {
            DispatchQueue.main.async {
                UIApplication.shared.open(phoneURL as URL, options: [:], completionHandler: nil)
            }
        }
    }
    /*
     // Using
     makePhoneCall(phoneNumber: "12345")
     */
}
