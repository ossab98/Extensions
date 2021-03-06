


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
