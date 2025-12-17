
import asyncio
from bleak import BleakClient, BleakScanner

# Corrected BLE UUIDs from device scan
SERVICE_UUID = "0000fff0-0000-1000-8000-00805f9b34fb"
CHARACTERISTIC_WRITEABLE = "0000fff3-0000-1000-8000-00805f9b34fb"

# Command codes
CMD_POWER_REQ = 0x01
CMD_SET_COLOR_REQ = 0x03
CMD_SET_BRIGHTNESS_REQ = 0x05

# Command structure constants
CMD_HEAD = 0x55
CMD_SEQUENCE = 0xFF

def build_command(cmd_code: int, value: bytes = b'') -> bytes:
    """Builds a full command packet."""
    total_length = 5 + len(value)
    data_for_checksum = bytearray([CMD_HEAD, cmd_code, CMD_SEQUENCE, total_length]) + value
    
    s = sum(data_for_checksum)
    while s > 0xFF:
        s = (s >> 8) + (s & 0xFF)
        
    checksum = (~s) & 0xFF

    full_packet = data_for_checksum + bytes([checksum])
    return full_packet

async def send_command(address: str, command: bytes):
    """Connects to the device and sends a command."""
    async with BleakClient(address) as client:
        if client.is_connected:
            print(f"Sending command: {command.hex()} to {address}")
            await client.write_gatt_char(CHARACTERISTIC_WRITEABLE, command)
            print("Command sent.")
        else:
            print(f"Failed to connect to {address}")

async def turn_on(address: str):
    """Turns the light on."""
    command = build_command(CMD_POWER_REQ, b'\x01')
    await send_command(address, command)

async def turn_off(address: str):
    """Turns the light off."""
    command = build_command(CMD_POWER_REQ, b'\x00')
    await send_command(address, command)

async def set_color(address: str, r: int, g: int, b: int):
    """Sets the color of the light."""
    color_value = bytes([r, g, b])
    command = build_command(CMD_SET_COLOR_REQ, color_value)
    await send_command(address, command)

async def set_brightness(address: str, brightness: int):
    """Sets the brightness of the light."""
    brightness_value = bytes([brightness])
    command = build_command(CMD_SET_BRIGHTNESS_REQ, brightness_value)
    await send_command(address, command)

async def main():
    """Main function to scan and select a device."""
    print("Scanning for devices...")
    devices = await BleakScanner.discover()
    for i, device in enumerate(devices):
        print(f"{i}: {device.name} ({device.address})")

    selected_device = None
    while not selected_device:
        selection = input("Select a device by index or MAC address: ").strip()
        
        if selection.isdigit():
            device_index = int(selection)
            if 0 <= device_index < len(devices):
                selected_device = devices[device_index]
            else:
                print("Invalid index. Please try again.")
        else:
            for device in devices:
                if device.address.lower() == selection.lower():
                    selected_device = device
                    break
            if not selected_device:
                print("Invalid MAC address. Please try again.")
    
    print(f"You selected: {selected_device.name} ({selected_device.address})")
    
    # --- Example Usage ---
    # await turn_on(selected_device.address)
    # await asyncio.sleep(2)
    # await set_color(selected_device.address, 255, 0, 0) # Red
    # await asyncio.sleep(2)
    # await set_brightness(selected_device.address, 50)
    # await asyncio.sleep(2)
    # await turn_off(selected_device.address)


if __name__ == "__main__":
    # This script is now a library of functions.
    # To use it, you would import these functions into another script.
    # The main function is left here for demonstration purposes.
    # To run the interactive scanner, you can uncomment the next line:
    # asyncio.run(main())
    print("This script is a library of functions. See the main() function for example usage.")
