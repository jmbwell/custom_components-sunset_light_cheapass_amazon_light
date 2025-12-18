"""Platform for light integration."""
import logging
import asyncio

from homeassistant.components.light import (
    ATTR_BRIGHTNESS,
    ATTR_RGB_COLOR,
    LightEntity,
    SUPPORT_BRIGHTNESS,
    SUPPORT_COLOR,
)
from homeassistant.components import bluetooth
from homeassistant.config_entries import ConfigEntry
from homeassistant.const import CONF_MAC
from homeassistant.core import HomeAssistant, State
from homeassistant.helpers import service
import voluptuous as vol

from .const import DOMAIN
from . import control

# Service schemas
SERVICE_SET_SCENE_SCHEMA = service.PLATFORM_SCHEMA.extend({
    vol.Required("entity_id"): service.ENTITY_ID_FORMAT,
    vol.Required("scene_name"): str,
})

SERVICE_SET_WHITE_SCHEMA = service.PLATFORM_SCHEMA.extend({
    vol.Required("entity_id"): service.ENTITY_ID_FORMAT,
})

_LOGGER = logging.getLogger(__name__)

async def async_setup_entry(
    hass: HomeAssistant,
    config_entry: ConfigEntry,
    async_add_entities,
):
    """Set up the Sunset Light platform."""
    mac_address = config_entry.data[CONF_MAC]
    async_add_entities([SunsetLight(mac_address, "Sunset Light", hass)])

    service.async_register_entity_service(
        hass,
        DOMAIN,
        "set_scene",
        SunsetLight.async_handle_set_scene,
        SERVICE_SET_SCENE_SCHEMA,
    )
    service.async_register_entity_service(
        hass,
        DOMAIN,
        "set_white",
        SunsetLight.async_handle_set_white,
        SERVICE_SET_WHITE_SCHEMA,
    )


class SunsetLight(LightEntity):
    """Representation of a Sunset Light."""

    def __init__(self, mac, name, hass: HomeAssistant):
        """Initialize a Sunset Light."""
        self._mac = mac
        self._name = name
        self._is_on = None
        self._brightness = None
        self._rgb_color = None
        self._hass = hass

    @property
    def unique_id(self):
        """Return a unique ID."""
        return self._mac

    @property
    def name(self):
        """Return the display name of this light."""
        return self._name

    @property
    def is_on(self):
        """Return true if light is on."""
        return self._is_on

    @property
    def brightness(self):
        """Return the brightness of the light."""
        return self._brightness

    @property
    def rgb_color(self):
        """Return the RGB color value."""
        return self._rgb_color

    @property
    def supported_features(self):
        """Flag supported features."""
        return SUPPORT_BRIGHTNESS | SUPPORT_COLOR

    def _get_device(self):
        """Get the BLEDevice object or fallback to MAC."""
        device = bluetooth.async_ble_device_from_address(self._hass, self._mac, connectable=True)
        return device if device else self._mac

    async def async_turn_on(self, **kwargs):
        """Instruct the light to turn on."""
        await control.turn_on(self._get_device())
        self._is_on = True

        if ATTR_RGB_COLOR in kwargs:
            r, g, b = kwargs[ATTR_RGB_COLOR]
            await control.set_color(self._get_device(), r, g, b)
            self._rgb_color = (r, g, b)
        else:
            # Keep current color or set to a default if not already set
            if self._rgb_color is None:
                self._rgb_color = (255, 255, 255) # Default to white if not set

        if ATTR_BRIGHTNESS in kwargs:
            brightness = kwargs[ATTR_BRIGHTNESS]
            await control.set_brightness(self._get_device(), int(brightness / 255 * 100))
            self._brightness = brightness
        else:
            # Keep current brightness or set to a default if not already set
            if self._brightness is None:
                self._brightness = 255 # Default to full brightness if not set

        self.async_write_ha_state()

    async def async_turn_off(self, **kwargs):
        """Instruct the light to turn off."""
        await control.turn_off(self._get_device())
        self._is_on = False
        self.async_write_ha_state()

    async def async_handle_set_scene(self, scene_name: str):
        """Handle the set_scene service call."""
        _LOGGER.debug("Setting scene %s for %s", scene_name, self._name)
        await control.set_scene(self._get_device(), scene_name)
        self.async_write_ha_state()

    async def async_handle_set_white(self):
        """Handle the set_white service call."""
        _LOGGER.debug("Setting %s to white", self._name)
        await control.set_white(self._get_device())
        self._rgb_color = (255, 255, 255) # Assuming white is full RGB
        self._brightness = 255 # Assuming white is full brightness
        self._is_on = True # Turning on if setting white
        self.async_write_ha_state()