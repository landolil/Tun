## 10. Control System Architecture

**Distributed control topology:**
- **Master PLC:** Siemens S7-1500 (radiation-hardened, in BFRP enclosure)
- **Zone controllers:** 8 × GaN inverter local controllers (EtherCAT)
- **Safety system:** Independent SIL-3 safety PLC (separate power, separate network)
- **FBG interrogator:** 8-channel optical, 1 kHz sample rate, ±1°C accuracy
- **Mass spec interface:** RS-485 to central historian
- **Operator HMI:** Ruggedized tablet (isolated Wi-Fi, no cloud connectivity)

**Interlocks (hardwired, not software):**
- Drum rotation < 10 RPM before Stage 4+ (prevents port shear)
- Pressure > 3 bar → emergency N₂ vent + coil shutdown
- FBG sensor loss → immediate zone power cut
- Vessel temperature > 200°C → water deluge (external only)
- Door open → all power cut, N₂ purge

---
