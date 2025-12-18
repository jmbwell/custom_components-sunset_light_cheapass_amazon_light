import asyncio
from bleak import BleakClient, BleakScanner

# UUIDs
SERVICE_UUID = "0000fff0-0000-1000-8000-00805f9b34fb"
# Reverting to fff3 for Write, as fff4 is typically Notify.
CHARACTERISTIC_WRITEABLE = "0000fff3-0000-1000-8000-00805f9b34fb"

# Command codes (for reference/dynamic commands)
CMD_POWER_REQ = 0x01
CMD_SET_COLOR_REQ = 0x03
CMD_SET_BRIGHTNESS_REQ = 0x05
CMD_WHITE_OFF = 0x00
CMD_SET_SCENE = 0x06

# Command structure constants
CMD_HEAD = 0x56
CMD_SEQUENCE = 0xFF

def build_command(cmd_code: int, value: bytes = b'') -> bytes:
    """Builds a full command packet using standard structure.
    Note: Checksum algorithm is best-guess. Use raw packets where possible."""
    total_length = 5 + len(value)
    data_for_checksum = bytearray([CMD_HEAD, cmd_code, CMD_SEQUENCE, total_length]) + value
    
    s = sum(data_for_checksum)
    while s > 0xFF:
        s = (s >> 8) + (s & 0xFF)
        
    checksum = (~s) & 0xFF

    full_packet = data_for_checksum + bytes([checksum])
    return full_packet

async def send_command(device, command: bytes):
    """Connects to the device (MAC string or BLEDevice object) and sends a command."""
    async with BleakClient(device) as client:
        if client.is_connected:
            # Determine address for logging
            address = device.address if hasattr(device, 'address') else device
            print(f"Sending command: {command.hex()} to {address}")
            await client.write_gatt_char(CHARACTERISTIC_WRITEABLE, command)
            print("Command sent.")
        else:
            address = device.address if hasattr(device, 'address') else device
            print(f"Failed to connect to {address}")

async def turn_on(device):
    """Turns the light on."""
    # Observed 'On' command: 5601FF0600EB
    command = bytes.fromhex('5601FF0600EB')
    await send_command(device, command)

async def turn_off(device):
    """Turns the light off."""
    # Observed 'Off' command: 5600FF0F0064000000000000000028
    command = bytes.fromhex('5600FF0F0064000000000000000028')
    await send_command(device, command)

async def set_white(device):
    """Sets the light to white."""
    # Observed 'White' command: 5600FF0F01640000000000000000A7
    command = bytes.fromhex('5600FF0F01640000000000000000A7')
    await send_command(device, command)

# Scene Mapping using FULL PACKETS (excluding checksum if possible, or just raw)
# Since I suspect the mapping logic, I will use the raw hex strings captured.
# If I don't have a raw string for a specific scene, I will fallback to build_command.
# Based on XML:
SCENE_MAPPING = {
    "fantasy": bytes.fromhex('5603FF060069'),
    "sunset": bytes.fromhex('5606FF0600E6'),
    "forest": bytes.fromhex('5606FF0600E6'),
    "ghost": bytes.fromhex('5606FF060066'),
    "sunrise": bytes.fromhex('5606FF060047'),
    "midsummer": bytes.fromhex('5606FF0600E6'),
    "tropicaltwilight": bytes.fromhex('5606FF0600E6'),
    "green prairie": bytes.fromhex('5603FF060069'),
    "rubyglow": bytes.fromhex('5603FF060069'),
    "aurora": bytes.fromhex('5603FF0600E9'),
    "savanah": bytes.fromhex('5606FF060066'),
    "alarm": bytes.fromhex('5606FF0600E6'),
    "lake placid": bytes.fromhex('5603FF060069'),
    "neon": bytes.fromhex('5606FF0600E6'),
    "sundowner": bytes.fromhex('5606FF060066'),
    "bluestar": bytes.fromhex('5603FF060069'),
    "redrose": bytes.fromhex('5603FF0600E9'),
    "rating": bytes.fromhex('5603FF060069'),
    "disco": bytes.fromhex('5606FF060066'),
    "autumn": bytes.fromhex('5606FF0600E6'),
}

async def set_scene(device, scene_name: str):
    """Sets a predefined scene."""
    command = SCENE_MAPPING.get(scene_name.lower())
    if command:
        await send_command(device, command)
    else:
        print(f"Unknown scene: {scene_name}")

async def set_color(device, r: int, g: int, b: int):
    """Sets the color of the light.
    Note: Using generic build_command, might need adjustment if checksum fails."""
    color_value = bytes([r, g, b])
    command = build_command(CMD_SET_COLOR_REQ, color_value)
    await send_command(device, command)

async def set_brightness(device, brightness: int):
    """Sets the brightness of the light.
    Note: Using generic build_command."""
    brightness_value = bytes([brightness])
    command = build_command(CMD_SET_BRIGHTNESS_REQ, brightness_value)
    await send_command(device, command)