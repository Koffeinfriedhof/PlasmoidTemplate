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

import QtQuick 2.1

import org.kde.plasma.configuration 2.0

ConfigModel {
    ConfigCategory {
        name: i18n("Settings")
        icon: "configure"
        source: "cfgSettings.qml"
    }
    ConfigCategory {
        name: i18n("Colors")
        icon: "color-picker.png"
        source: "cfgColors.qml"
    }
    ConfigCategory {
        name: i18n("Credits")
        icon: "help-about.png"
        source: "cfgAbout.qml"
    }
}
