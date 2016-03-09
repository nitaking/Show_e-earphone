//
//  ViewController.swift
//  Show_e-earphone
//
//  Created by Satoshi Nitawaki on 2016/03/09.
//  Copyright © 2016年 仁田脇 理史. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIWebViewDelegate {
    
    @IBOutlet var webview : UIWebView?
    let URL_e_earphone = "http://www.e-earphone.jp/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webview = self.createWebView()
        self.view.addSubview(self.webview!)
        
        loadStartURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadStartURL() {
        let targetURL = NSURL(string: URL_e_earphone)
        let request = NSURLRequest(URL: targetURL!)
        
        webview?.loadRequest(request)
    }
    
    func createWebView() -> UIWebView {
        let _webView = UIWebView()
        
        _webView.frame = self.view.bounds
        
        return _webView
    }
}

