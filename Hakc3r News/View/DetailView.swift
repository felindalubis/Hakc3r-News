//
//  DetailView.swift
//  Hakc3r News
//
//  Created by Felinda Gracia Lubis on 6/29/20.
//  Copyright © 2020 Felinda Lubis. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


