//
//  ViewController.swift
//  Show_e-earphone
//
//  Created by Satoshi Nitawaki on 2016/03/09.
//  Copyright © 2016年 仁田脇 理史. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIWebViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL_e_earphone = "http://www.e-earphone.jp/"
        let webView : UIWebView = UIWebView()
        webView.delegate = self
        
        // URL_e_earphone指定のURLを表示
        showWebSite()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showWebSite(){
        let targetURL = NSURL(fileURLWithPath:URL_e_earphone)
        
        let req = NSURLRequest(URL: targetURL)
        
        webView.loadRequest(req)
        webView.scalesPageToFit = false
    }
}

