//
//  WebViewController.swift
//  Pokedex
//
//  Created by Rodrigo Martín Martín on 30/10/2018.
//  Copyright © 2018 Rodri. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    var race: Race!

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var str = "http://es.pokemon.wikia.com"
        
        if let r = race {
            
            title = r.name
            
            if let path = "wiki/\(r.name)".addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) {
                str = "\(str)/\(path)"
            }
        }
        
        if let url = URL(string: str) {
            let req = URLRequest(url: url)
            webView.loadRequest(req)
        }

    }
    

}
