This project shows a bug (or some sort of) about the Cascades WebView component in BlackBerry 10 - OS version 10....

The issue is that if you try to load a webview with a (quite) big image the app crash.
Try this code, it should crash:

```
```import bb.cascades 10.2
```Page {
```	Container {
```		WebView {
```			html: "<html><a href="abigimage" /></html>";
```		}
```	}
```}

```

The solution (or better, the workaround) is to load dynamically the WebView, with a preloaded small image (see the current source code).

