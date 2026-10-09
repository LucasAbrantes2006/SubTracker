---
   name: SubTracker
colors:
  surface: '#f8f9ff'
  surface-dim: '#cbdbf5'
  surface-bright: '#f8f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eff4ff'
  surface-container: '#e5eeff'
  surface-container-high: '#dce9ff'
  surface-container-highest: '#d3e4fe'
  on-surface: '#0b1c30'
  on-surface-variant: '#45464d'
  inverse-surface: '#213145'
  inverse-on-surface: '#eaf1ff'
  outline: '#76777d'
  outline-variant: '#c6c6cd'
  surface-tint: '#565e74'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#131b2e'
  on-primary-container: '#7c839b'
  inverse-primary: '#bec6e0'
  secondary: '#006c49'
  on-secondary: '#ffffff'
  secondary-container: '#6cf8bb'
  on-secondary-container: '#00714d'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#410004'
  on-tertiary-container: '#ef4444'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dae2fd'
  primary-fixed-dim: '#bec6e0'
  on-primary-fixed: '#131b2e'
  on-primary-fixed-variant: '#3f465c'
  secondary-fixed: '#6ffbbe'
  secondary-fixed-dim: '#4edea3'
  on-secondary-fixed: '#002113'
  on-secondary-fixed-variant: '#005236'
  tertiary-fixed: '#ffdad7'
  tertiary-fixed-dim: '#ffb3ad'
  on-tertiary-fixed: '#410004'
  on-tertiary-fixed-variant: '#930013'
  background: '#f8f9ff'
  on-background: '#0b1c30'
  surface-variant: '#d3e4fe'
typography:
  headline-xl:
    fontFamily: Inter
    fontSize: 36px
    fontWeight: '700'
    lineHeight: 44px
    letterSpacing: -0.025em
  headline-xl-mobile:
    fontFamily: Inter
    fontSize: 28px
    fontWeight: '700'
    lineHeight: 36px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Inter
    fontSize: 30px
    fontWeight: '600'
    lineHeight: 38px
    letterSpacing: -0.02em
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.015em
  headline-md:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
    letterSpacing: -0.015em
  headline-sm:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '600'
    lineHeight: 24px
    letterSpacing: -0.01em
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  body-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '400'
    lineHeight: 16px
  label-md:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.02em
  label-sm:
    fontFamily: Inter
    fontSize: 11px
    fontWeight: '500'
    lineHeight: 14px
    letterSpacing: 0.025em
  metric-display:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.03em
  metric-sub:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '600'
    lineHeight: 24px
    letterSpacing: -0.02em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  gutter: 1rem
  gutter-desktop: 1.5rem
  margin: 1rem
  margin-tablet: 1.5rem
  margin-desktop: 2rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2rem
---

## Brand & Style

The design system projects authority, mathematical precision, and absolute transparency. Built for personal recurring expense tracking, the aesthetic draws heavily from top-tier fintech interfaces (such as Wise and Stripe), blending institutional stability with consumer-grade clarity.

### Personality & Values
- **Calculated Clarity:** Financial metrics and recurring schedules are surfaced with zero visual clutter. Numbers, currency symbols, and frequency intervals are prioritized over decorative elements.
- **Trustworthy & Grounded:** Anchored by structured deep navy tones, the UI conveys the quiet confidence of an established modern financial institution.
- **Action-Oriented Vitality:** Crisp emerald accents signify active billing cycles, confirmed payments, and positive liquidity adjustments, giving users quick visual reassurance.

### Design Movement
**Modern Fintech Minimalist:** High reliance on clean surface separation, subtle 1px structural borders, tabular numeral alignment, compact information density, and focused high-contrast interactive nodes.

## Colors

The palette is engineered for high-contrast monetary readability and instant status recognition:

- **Primary Canvas & Dominant Ink (`#0F172A`):** Deep Navy anchors titles, primary buttons, critical financial totals, and high-emphasis labels.
- **Accent Emerald (`#10B981`):** Applied to active recurring subscriptions, confirmed debits, trial-to-paid conversions, and primary execution targets.
- **Alert Rose (`#EF4444`):** Applied to cancellation states, failed recurring transactions, upcoming trial expiration warnings, and destructive actions.
- **Warning Amber (`#F59E0B`):** Reserved for impending bill dates within 48 hours, anomalous price spikes, and renewal notices.
- **Neutral Hierarchy (`#64748B`, `#94A3B8`, `#F8FAFC`, `#FFFFFF`):**
  - Background: Crisp off-white slate (`#F8FAFC`).
  - Container Surfaces: Pure white (`#FFFFFF`).
  - Structural Outlines: Cool slate border (`#E2E8F0`).
  - Muted Captions & Secondary Figures: Slate text (`#64748B`).

## Typography

Typography relies on **Inter** with native OpenType tabular figures (`font-variant-numeric: tabular-nums`) enabled across all metric and monetary values (e.g., `$1,240.00`, `R$ 450,90`, `€89,50`).

### Hierarchy & Rules
- **Numerical Hierarchy:** Monetary totals use `metric-display` with negative tracking to avoid wide spacing across large decimal groups.
- **Labels & Currency Codes:** Currency indicators (USD, BRL, EUR) and payment cadence suffixes (`/mo`, `/yr`) use `label-sm` or `label-md` in uppercase or semibold weight with standard positive tracking.
- **Readability Thresholds:** Dense dashboard tables strictly use `body-md` and `body-sm` to maintain high scanability during continuous vertical scrolling.

## Layout & Spacing

A strictly systematic 8pt base spacing scale underpins the grid, optimizing the UI for financial dashboards where vertical alignment of numerical figures is essential.

### Grid & Breakpoints
- **Mobile (< 768px):** Single-column layout; full-width card structures; 16px (`margin`) outer edge inset; bottom tab-bar fixed navigation with safe-area spacing.
- **Tablet (768px - 1023px):** 6-column fluid grid; 24px (`margin-tablet`) outer margins; 16px (`gutter`) inter-column spacing.
- **Desktop (≥ 1024px):** 12-column grid; 32px (`margin-desktop`) outer padding; 24px (`gutter-desktop`) gutters; fixed sidebar navigation (240px width) with fluid content panel restricted to a maximum container width of 1440px.

### Spatial Rhythm
Inner-card content spacing uses `space-md` (16px) for standard metrics, scaling down to `space-sm` (8px) for tight metadata pairings (such as merchant logos stacked against billing frequencies).

## Elevation & Depth

Visual hierarchy avoids heavy drop shadows, adopting an ultra-clean fintech approach defined by surface tone and crisp low-contrast hairline borders.

### Surface Stratification
- **Canvas Base:** `#F8FAFC` sits at ground level.
- **Primary Cards & Modals:** `#FFFFFF` sits above the canvas, bounded by a uniform 1px solid border in `#E2E8F0`.
- **Shadow Scale:**
  - *Resting Card:* `0 1px 2px 0 rgba(15, 23, 42, 0.04)`.
  - *Interactive Hover:* `0 4px 6px -1px rgba(15, 23, 42, 0.06), 0 2px 4px -2px rgba(15, 23, 42, 0.04)`.
  - *Floating Modals / Currency Selector Dropdowns:* `0 10px 15px -3px rgba(15, 23, 42, 0.08), 0 4px 6px -4px rgba(15, 23, 42, 0.03)`.
- **Low-Contrast Outlines:** Hairline borders are prioritized over cast shadows to keep multi-column tables and grid cards razor-sharp across retina displays.

## Shapes

The interface balances sharp financial architecture with modern consumer-app ergonomics using a Level 2 (`0.5rem` / `8px`) base radius.

### Corner Radius Standards
- **Cards, Modals & Text Inputs:** `0.5rem` (8px) base radius for structural discipline.
- **Large Container Blocks:** `0.75rem` (12px) for high-level summary cards.
- **Pills & Status Badges:** Fully rounded (`9999px`) for active tags, currency switches, and renewal tags.
- **Micro Touchpoints:** Buttons employ `0.5rem` (8px) to match input fields seamlessly when placed in horizontal lockups.

## Components

### Buttons
- **Primary:** Filled `#10B981` with white text, or solid `#0F172A` with white text for utility actions. Height: 40px (desktop), 44px (touch/mobile). Radius: `0.5rem`.
- **Secondary:** White background with `#E2E8F0` border, text in `#0F172A`. Subtle hover fill to `#F8FAFC`.
- **Destructive:** Subtle rose wash (`#FEF2F2`) with `#EF4444` label; solid `#EF4444` for final confirmation modals.

### Status & Currency Badges (Pills)
- **Active / Paid:** `#ECFDF5` background with `#065F46` label and a 6px solid `#10B981` status dot.
- **Alert / Overdue / Canceled:** `#FEF2F2` background with `#991B1B` label.
- **Warning / Upcoming:** `#FFFBEB` background with `#92400E` label.
- **Currency Switcher:** Pill-shaped selector with `#F1F5F9` background, active currency segmented into `#FFFFFF` pill with a micro-shadow.

### Cards & Metrics
- **Metric Tile:** Pure white background, `#E2E8F0` 1px border, 16px padding. Houses subscription aggregate count, monthly run rate, and annual projection with tabular layout numerals.
- **Subscription Row / Card:** Displays merchant avatar/icon (36x36px, `0.5rem` radius), plan name, billing cadence tag, next charge date, and amount aligned right.

### Input Fields & Controls
- **Inputs:** 40px height, `#FFFFFF` background, 1px border (`#CBD5E1`), 8px border-radius, `body-md` typography. Focused state transitions to a 1px border in `#0F172A` with a 2px outer ring in `#E2E8F0`.
- **Checkboxes & Radios:** 16px square/circle with `#CBD5E1` border, transitioning to `#10B981` when active with a white checkmark/dot.

### Mobile Tab Bar
- **Navigation:** Fixed to viewport bottom with high blur backdrop (`rgba(255, 255, 255, 0.9)`), top hairline border (`#E2E8F0`), 56px height plus device home-indicator offset. Icons use 20px glyphs with active states highlighted in `#0F172A`.
