/*
 * Copyright (c) 2021 Alex Spataru <https://github.com/alex-spataru>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import "../Widgets" as Widgets
import "../Dashboard" as DashboardItems

Item {
    id: root

    //
    // Animations
    //
    Behavior on opacity {NumberAnimation{}}

    //
    // Main layout
    //
    ColumnLayout {
        anchors.fill: parent
        spacing: app.spacing * 2
        anchors.margins: app.spacing * 1.5

        //
        // Widget selector + widgets
        //
        RowLayout {
            spacing: app.spacing
            Layout.fillWidth: true
            Layout.fillHeight: true

            //
            // View options window + shadow
            //
            Item {
                Layout.fillHeight: true
                Layout.minimumWidth: 240

                DashboardItems.ViewOptions {
                    id: viewOptions
                    anchors.fill: parent
                }

                Widgets.Shadow {
                    source: viewOptions
                    anchors.fill: viewOptions
                }
            }

            //
            // Widget grid
            //
            Item {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.minimumWidth: 240

                DashboardItems.WidgetGrid {
                    id: widgetGrid
                    anchors.fill: parent
                }

                Widgets.Shadow {
                    source: widgetGrid
                    anchors.fill: widgetGrid
                }
            }
        }

        //
        // Dashboard title window
        //
        DashboardItems.DashboardTitle {
            height: 32
            Layout.fillWidth: true
        }
    }
}