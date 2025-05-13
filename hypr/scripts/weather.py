#!/usr/bin/env python3

import requests

# Gunakan Open-Meteo (gratis & tanpa API key)
lat = -7.7042   # Koordinat Klaten
lon = 110.6071

try:
    url = f"https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&current=temperature_2m,weathercode&timezone=auto"
    response = requests.get(url, timeout=5)
    data = response.json()

    temp = data["current"]["temperature_2m"]
    print(f"{temp}°C")
except:
    print("Cuaca ?")

