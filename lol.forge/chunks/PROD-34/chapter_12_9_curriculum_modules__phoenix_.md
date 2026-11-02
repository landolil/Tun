## 9. Curriculum Modules — Phoenix Depot Operations (Cross-Training)

### 9.1 Module P-01: Depot Disassembly & Classification (16 hrs)

**Process (PROD-22, 33):**
1. **Tertiary Hub**: QR scan return → Category D1-D7 → BFRP crate load (500 kg, 80% fill min)
2. **Secondary Hub**: Pre-sort, battery/capacitor discharge (SOC log), crate consolidate
3. **Primary Hub**: Auto disassembly cell (6-axis + vision, 15 min/product):
   - Step 1: Electronic/optical extraction (2 min) → PCBs, sensors, LoRa → Stage 0 or refurb
   - Step 2: Hardware removal (3 min) → PEEK CF40, ZrO₂, Ti₃AlC₂ → ultrasonic clean → re-use
   - Step 3: BFRP solvolysis (120 min batch) → 350°C, 2h, N₂ → Elium® monomer + basalt fiber
   - Step 4: Ceramic core processing (15 min) → crush → mill → hydromet feed
   - Step 5: Critical mineral glaze recovery (30 min) → ionic liquid extraction

**LIBS/XRF Classification**: Every Primary hub runs 100% LIBS/XRF on disassembly output → feeds CMF-RQT M_return vector real-time.

**Assessment**: Practical — operate disassembly cell sim, classify 10 returns via LIBS, log crate UUID

### 9.2 Module P-02: Solvolysis & Material Recovery (16 hrs)

**Solvolysis Reactor Operation:**
- Elium® depolymerization: 350°C, 2h, 15 bar N₂, 500L reactor
- Monomer recovery: MMA >99%, glycol >98% → distillation → Elium® reformulation
- Basalt fiber: 95% yield, 15-20 μm diameter retained → BFRP pultrusion (FOLLOW-05)
- Crate wash: Closed-loop water, 99% recycle → BFRP crate redeploy (500 cycles)

**Hydrometallurgy Interface:**
- Zr/Y hydroxide gel → calcination → 3Y-TZP powder (Stage 8 loop)
- In 99.9% (YInMn), Y 98% (YSZ), Co 98% (electroplated) → Forge re-entry

**Assessment**: Simulator — run solvolysis batch, verify monomer purity, calculate fiber yield

### 9.3 Module P-03: Blend Ratio MFC & Depot Logistics (8 hrs)

**Blend Ratio Control (PROD-22, 31, 33):**
- CMF-RQT computes P_blend ∈ [0.4, 0.6] from M_virgin, M_return, Q_gen, Γ_stage
- MFC adjusts ±2% tolerance via Stage 0-8 gate thresholds
- Gate fee economics: higher fee → higher EOL blend → more In/REE/Co recovery (PROD-31)

**Depot Logistics (PROD-33):**
- VRP optimization: Clarke-Wright + 2-opt, minimize Σ(distance × carbon)
- Electric Class 8 (500 km) Secondary→Primary; Diesel hybrid Tertiary→Secondary
- Crate turnaround: 14 days (return → clean → redeploy)
- Carbon intensity: 0.08 kg CO₂e/ton-km (electric) vs 0.22 (diesel)

**Assessment**: Simulator — adjust P_blend for In spike in D4 stream, verify Stage 4 recovery

---
