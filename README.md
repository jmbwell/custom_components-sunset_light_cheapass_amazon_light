
# HA Sunset Light Hack

This repository contains a Home Assistant custom component to control a Bluetooth-based sunset light.

## Installation

1.  Copy the `custom_components/sunset_light` directory to the `custom_components` directory of your Home Assistant configuration.
2.  Restart Home Assistant.

## Configuration

1.  Go to **Settings** -> **Devices & Services**.
2.  Click the **+ Add Integration** button.
3.  Search for "Sunset Light" and select it.
4.  Enter the MAC address of your sunset light and click **Submit**.

## How it works

The `control.py` script contains the logic for controlling the light via Bluetooth LE. The Home Assistant custom component in the `custom_components/sunset_light` directory uses this script to provide a `light` entity in Home Assistant.

### Bluetooth Protocol

*   **Service UUID:** `0000fff0-0000-1000-8000-00805f9b34fb`
*   **Write Characteristic UUID:** `0000fff3-0000-1000-8000-00805f9b34fb`
*   **Command Structure:** `0x55` + `cmdCode` + `0xff` + `length` + `value` + `checksum`

### Commands

*   **Power:**
    *   Command Code: `0x01`
    *   Value: `0x01` (On), `0x00` (Off)
*   **Set Color:**
    *   Command Code: `0x03`
    *   Value: `[R, G, B]` (3 bytes)
*   **Set Brightness:**
    *   Command Code: `0x05`
    *   Value: `[brightness]` (1 byte, 0-100)
