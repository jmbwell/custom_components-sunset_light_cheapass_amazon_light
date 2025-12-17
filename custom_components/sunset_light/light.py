
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
from homeassistant.config_entries import ConfigEntry
from homeassistant.const import CONF_MAC
from homeassistant.core import HomeAssistant

from .const import DOMAIN
from . import control

_LOGGER = logging.getLogger(__name__)

async def async_setup_entry(
    hass: HomeAssistant,
    config_entry: ConfigEntry,
    async_add_entities,
):
    """Set up the Sunset Light platform."""
    mac_address = config_entry.data[CONF_MAC]
    async_add_entities([SunsetLight(mac_address, "Sunset Light")])


class SunsetLight(LightEntity):
    """Representation of a Sunset Light."""

    def __init__(self, mac, name):
        """Initialize a Sunset Light."""
        self._mac = mac
        self._name = name
        self._is_on = None
        self._brightness = None
        self._rgb_color = None

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

    async def async_turn_on(self, **kwargs):
        """Instruct the light to turn on."""
        await control.turn_on(self._mac)
        self._is_on = True

        if ATTR_RGB_COLOR in kwargs:
            r, g, b = kwargs[ATTR_RGB_COLOR]
            await control.set_color(self._mac, r, g, b)
            self._rgb_color = (r, g, b)

        if ATTR_BRIGHTNESS in kwargs:
            brightness = kwargs[ATTR_BRIGHTNESS]
            await control.set_brightness(self._mac, int(brightness / 255 * 100))
            self._brightness = brightness
        
        self.async_write_ha_state()

    async def async_turn_off(self, **kwargs):
        """Instruct the light to turn off."""
        await control.turn_off(self._mac)
        self._is_on = False
        self.async_write_ha_state()

    async def async_update(self):
        """Fetch new state data for this light.

        This is the only method that should fetch new data for Home Assistant.
        """
        # For now, we'll just assume the state is what we set it to.
        # A more robust implementation would query the device for its state.
        pass
