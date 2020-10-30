//
//  DetailView.swift
//  Hacker News
//
//  Created by Renan Baialuna on 30/10/20.
//  Copyright © 2020 Renan Baialuna. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    let urlString: String?
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}

