/*
 * Copyright (c) 2011-2013 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2

NavigationPane {
    id: navpane
Page {
    attachedObjects: [
        ComponentDefinition {
            id: wv
            source: "MyWebView.qml"
        }
    ]
    Container {
        //Todo: fill me with QML
        Button {
            text: "webview load";
                onClicked: {
                    var page = wv.createObject();
                    navpane.push(page);
                    page.webUrl = "<html><img src=\"http://bouncelab.files.wordpress.com/2013/09/wpid-img_000000655.jpg\" alt=\"desc\" /></html>";
                }
            }
        }
    }
}
