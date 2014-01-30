import bb.cascades 1.2

Page {
    property string webUrl
    
    onCreationCompleted: {
        webView.html = "<html><img src=\"local:///assets/images/blank.png\" alt=\"desc\" /></html>";
    }
    
    Container {
        WebView {
            id: webView
            property bool blankImageAlreadyLoaded: false
            onLoadingChanged: {
                if (loadRequest.status == WebLoadStatus.Started) {
                    console.log("Load started.", html);
                }
                else if (loadRequest.status == WebLoadStatus.Succeeded) {
                    console.log("Load finished.", html);
                    if (!blankImageAlreadyLoaded) html = webUrl;
                    blankImageAlreadyLoaded = true;
                }
                else if (loadRequest.status == WebLoadStatus.Failed) {
                    console.log("Load failed.", html);
                }
            }
        }
        
    }
}

