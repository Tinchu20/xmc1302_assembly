# ─────────────────────────────────────────────────────────────
#  xPSR compact horizontal decoder for arm-none-eabi-gdb
#  Place in ~/.gdbinit  or  source from your .gdbinit
# ─────────────────────────────────────────────────────────────

define pxpsr
    set $_x = $xpsr

    # ── Line 1: raw value ────────────────────────────────────
    printf "xPSR: 0x%08X\n", $_x

    # ── Line 2: APSR flags ───────────────────────────────────
    printf "  APSR | N:%d  Z:%d  C:%d  V:%d  Q:%d  GE:%d%d%d%d\n", \
        ($_x >> 31) & 1, \
        ($_x >> 30) & 1, \
        ($_x >> 29) & 1, \
        ($_x >> 28) & 1, \
        ($_x >> 27) & 1, \
        ($_x >> 19) & 1, ($_x >> 18) & 1, ($_x >> 17) & 1, ($_x >> 16) & 1

    # ── Line 3: EPSR + IPSR ──────────────────────────────────
    set $_it  = ((($_x >> 25) & 0x3) << 6) | (($_x >> 10) & 0x3F)
    set $_isr = $_x & 0x1FF
    printf "  EPSR | T:%d  ICI/IT:0x%02X    IPSR | ISR:%d", \
        ($_x >> 24) & 1, $_it, $_isr

    if $_isr == 0
        printf " (Thread)\n"
    end
    if $_isr == 1
        printf " (Reset)\n"
    end
    if $_isr == 2
        printf " (NMI)\n"
    end
    if $_isr == 3
        printf " (HardFault)\n"
    end
    if $_isr == 4
        printf " (MemManage)\n"
    end
    if $_isr == 5
        printf " (BusFault)\n"
    end
    if $_isr == 6
        printf " (UsageFault)\n"
    end
    if $_isr == 11
        printf " (SVCall)\n"
    end
    if $_isr == 12
        printf " (DebugMon)\n"
    end
    if $_isr == 14
        printf " (PendSV)\n"
    end
    if $_isr == 15
        printf " (SysTick)\n"
    end
    if $_isr >= 16
        printf " (IRQ#%d)\n", $_isr - 16
    end
    if $_isr == 7
        printf " (reserved)\n"
    end
    if $_isr == 8
        printf " (reserved)\n"
    end
    if $_isr == 9
        printf " (reserved)\n"
    end
    if $_isr == 10
        printf " (reserved)\n"
    end
    if $_isr == 13
        printf " (reserved)\n"
    end

    # ── Thumb bit warning ────────────────────────────────────
    if (($_x >> 24) & 1) == 0
        printf "  *** WARNING: T=0 — fault imminent! ***\n"
    end
end

document pxpsr
Print xPSR bit fields in compact 3-line horizontal format.
  Line 1 — raw hex value
  Line 2 — APSR: N Z C V Q GE flags
  Line 3 — EPSR: T Thumb + ICI/IT,  IPSR: ISR number + name
Usage: pxpsr
end

define hook-stop
    pxpsr
end

