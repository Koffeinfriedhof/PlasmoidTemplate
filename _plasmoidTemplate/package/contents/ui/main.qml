/*
 * Copyright KOF_CURRENT_YEAR_AUTHOR_EMAIL
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.7
import QtQuick.Layouts 1.3 as QtLayouts
import QtQuick.Controls 1.4 as QtControls

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.plasmoid 2.0


Item {
    id: root

    /** CONFIGURATION **/
    //ICON
    property bool showBackground: Plasmoid.configuration.showIconBackground

    //Colors
    property string backgroundColor: Plasmoid.configuration.backgroundColor
    property string primaryFontColor: Plasmoid.configuration.primaryFontColor
    property string secondaryFontColor: Plasmoid.configuration.secondaryFontColor

    /** PROPERTIES **/

    /** FUNCTIONS **/

    /** PLASMOID DETAILS **/
    Plasmoid.backgroundHints: showBackground ? "DefaultBackground" : "NoBackground"
    Plasmoid.preferredRepresentation: Plasmoid.compactRepresentation

    Plasmoid.toolTipMainText: i18n("Mousehover Icon Text")
    Plasmoid.toolTipSubText: i18n("Mousehover Subtext")

    /** COMPACT **/
    Plasmoid.compactRepresentation: Component {
        MouseArea {
            id: compactRoot

            onClicked: plasmoid.expanded = !plasmoid.expanded
            //example compact representation like svg-icon
            PlasmaCore.SvgItem {

                anchors.fill: parent
                height: 100
                width: 100

                svg: PlasmaCore.Svg {
                    imagePath: plasmoid.file("images", "k.svg");
                }

            }
        }
    }

    /** FULL **/
    Plasmoid.fullRepresentation: Rectangle {
        id: iAmJustHereForCustomBackgroundColor
        QtLayouts.Layout.preferredWidth: fullRoot.QtLayouts.Layout.minimumWidth + units.smallSpacing
        QtLayouts.Layout.preferredHeight: fullRoot.QtLayouts.Layout.minimumHeight + units.smallSpacing
        color: backgroundColor
        //CustomPopup{ id: fullRoot }
    }
}
