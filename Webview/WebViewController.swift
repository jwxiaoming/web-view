//
//  WebViewController.swift
//  Webview
//
//  Created by jack on 17/2/6.
//  Copyright © 2017年 jack. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var WebView: UIWebView!
    @IBOutlet weak var jiazai: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = NSURL(string: "http://jandan.net"){
            WebView.loadRequest(NSURLRequest(URL: url))
            
        }
        WebView.backgroundColor = UIColor.whiteColor()
        
        jiazai.startAnimating()
        
        WebView.delegate = self

        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension WebViewController: UIWebViewDelegate{
    
    func webViewDidFinishLoad(webView: UIWebView) {
        jiazai.stopAnimating()
    }
        
    
    
}