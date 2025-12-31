# DiagnosisAI - Wireframes & UI Specification

**Version:** 2.0  
**Last Updated:** December 28, 2025  
**Author:** Bharath Nagesh

---

## Table of Contents

1. [Design Principles](#design-principles)
2. [Color System](#color-system)
3. [Screen Hierarchy](#screen-hierarchy)
4. [Detailed Wireframes](#detailed-wireframes)
5. [Component Library](#component-library)
6. [User Flows](#user-flows)
7. [Responsive Behavior](#responsive-behavior)

---

## Design Principles

### Core Philosophy
- **Patient-Centric Architecture**: Every feature organized around individual patient profiles
- **Color-Coded Severity**: Visual urgency indicators without text labels
- **Minimal Cognitive Load**: Clean interfaces optimized for high-volume clinical workflows
- **Touch-Optimized**: Designed for mobile-first interaction
- **Offline-First**: Works without internet connectivity

### Visual Language
- **Clean & Modern**: iOS-inspired interface with ample white space
- **Gradient Accents**: Purple gradient (667eea → 764ba2) for primary actions
- **Color-Coded Context**: Red (critical), Orange (moderate), Green (routine)
- **Typography**: SF Pro Display / system fonts for native feel
- **Rounded Corners**: 16px border radius for cards, 12px for buttons

---

## Color System

### Primary Colors
```
Primary Gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%)
Background: #f8fafc (light gray)
Card Background: #ffffff (white)
```

### Urgency Colors
```
Critical:
  Border: #dc2626 (red-600)
  Background: linear-gradient(to right, #fef2f2, #ffffff)
  
Moderate:
  Border: #f59e0b (orange-500)
  Background: linear-gradient(to right, #fffbeb, #ffffff)
  
Routine:
  Border: #059669 (green-600)
  Background: #ffffff
```

### Text Colors
```
Primary Text: #1e293b (slate-900)
Secondary Text: #64748b (slate-500)
Tertiary Text: #94a3b8 (slate-400)
Link/Accent: #667eea (purple)
Success: #059669 (green-600)
Error: #dc2626 (red-600)
```

### UI Elements
```
Borders: #e2e8f0 (slate-200)
Dividers: #f1f5f9 (slate-100)
Disabled: #cbd5e1 (slate-300)
Shadow: rgba(0,0,0,0.05)
```

---

## Screen Hierarchy

### Level 1: Home (Patient List)
```
┌─────────────────────────────────────┐
│  DiagnosisAI              [📊] [⚙️]  │
├─────────────────────────────────────┤
│  🔍 Search patients...              │
│                                     │
│  Active Patients          [+ New]  │
│                                     │
│  ┌───────────────────────────────┐ │
│  │ Robert S.            CRITICAL │ │ ← Red left border
│  │ 45 yrs • Male • Today, 2:30PM │ │
│  │ CC: Chest pain to left arm... │ │
│  └───────────────────────────────┘ │
│                                     │
│  ┌───────────────────────────────┐ │
│  │ Maria P.             CRITICAL │ │ ← Red left border
│  │ 28 yrs • Female • 11:15 AM    │ │
│  │ CC: Severe headache, photo... │ │
│  └───────────────────────────────┘ │
│                                     │
│  ┌───────────────────────────────┐ │
│  │ Karen L.             MODERATE │ │ ← Orange left border
│  │ 62 yrs • Female • 9:45 AM     │ │
│  │ CC: Productive cough, fever.. │ │
│  └───────────────────────────────┘ │
│                                     │
│  ┌───────────────────────────────┐ │
│  │ David B.             ROUTINE  │ │ ← Green left border
│  │ 52 yrs • Male • Yesterday     │ │
│  │ CC: Chest discomfort after... │ │
│  └───────────────────────────────┘ │
│                                     │
│           4 active patients         │
└─────────────────────────────────────┘
```

**Key Features:**
- Patient cards with 6px colored left border indicating urgency
- Chief complaint preview (truncated)
- Tap any card to open patient profile
- Search bar for filtering patients
- Quick stats at bottom
- Add new patient button

---

### Level 2: Patient Profile (Tabbed Interface)

#### Tab Navigation
```
┌─────────────────────────────────────┐
│  ← Robert S.                    ⋮   │
├─────────────────────────────────────┤
│ [Overview] Diagnosis Labs Treat... │
└─────────────────────────────────────┘
```

**Five Tabs:**
1. Overview - Patient info, vitals, current assessment
2. Diagnosis - Differential diagnoses ranked by likelihood
3. Labs - Lab results input and AI interpretation
4. Treatment - Protocols, checklists, medications
5. Notes - Auto-generated clinical documentation

---

#### Tab 1: Overview
```
┌─────────────────────────────────────┐
│  ← Robert S.                    ⋮   │
├─────────────────────────────────────┤
│ [Overview] Diagnosis Labs Treat... │
├─────────────────────────────────────┤
│                                     │
│  Patient Info                       │
│  ┌─────────────────────────────┐   │
│  │ Age: 45 years  Gender: Male │   │
│  │ Visit: 2:30 PM Status: 🔴   │   │
│  └─────────────────────────────┘   │
│                                     │
│  Chief Complaint                    │
│  ┌─────────────────────────────┐   │
│  │ Chest pain radiating to     │   │
│  │ left arm, shortness of      │   │
│  │ breath, diaphoresis.        │   │
│  │ Duration: 30 minutes.       │   │
│  └─────────────────────────────┘   │
│                                     │
│  Vital Signs                        │
│  ┌─────────────────────────────┐   │
│  │  BP        HR    SpO2  Temp │   │
│  │ 160/95    102    96%  98.2°F│   │
│  │  🔴       🔴     ✓     ✓    │   │
│  └─────────────────────────────┘   │
│                                     │
│  Current Assessment                 │
│  ┌─────────────────────────────┐   │
│  │ Probable acute myocardial   │   │ ← Red background
│  │ infarction. ECG and         │   │
│  │ troponin ordered.           │   │
│  │ Cardiology consult pending. │   │
│  └─────────────────────────────┘   │
│                                     │
└─────────────────────────────────────┘
```

**Key Features:**
- Demographic summary
- Full chief complaint
- Color-coded vital signs (red if abnormal)
- Current assessment with urgency background
- Quick access to all patient context

---

#### Tab 2: Diagnosis
```
┌─────────────────────────────────────┐
│  ← Robert S.                    ⋮   │
├─────────────────────────────────────┤
│ Overview [Diagnosis] Labs Treat... │
├─────────────────────────────────────┤
│                                     │
│  Differential Diagnosis             │
│                                     │
│  ┌─────────────────────────────┐   │ ← Red left border
│  │ Myocardial Infarction       │   │
│  │ 78% likelihood • I21.9      │   │
│  │                             │   │
│  │ Supporting: Substernal pain │   │
│  │ with radiation, diaphoresis,│   │
│  │ elevated vitals, male 45+   │   │
│  └─────────────────────────────┘   │
│                                     │
│  ┌─────────────────────────────┐   │ ← Orange left border
│  │ Unstable Angina             │   │
│  │ 65% likelihood • I20.0      │   │
│  │                             │   │
│  │ Supporting: Similar         │   │
│  │ presentation pattern        │   │
│  └─────────────────────────────┘   │
│                                     │
│  ┌─────────────────────────────┐   │ ← Green left border
│  │ GERD                        │   │
│  │ 35% likelihood • K21.9      │   │
│  │                             │   │
│  │ Supporting: Common cause    │   │
│  │ of chest discomfort         │   │
│  └─────────────────────────────┘   │
│                                     │
│  Evidence Base                      │
│  ┌─────────────────────────────┐   │
│  │ 2,847  47      2023         │   │
│  │ Cases  Studies  Guidelines  │   │
│  └─────────────────────────────┘   │
│                                     │
└─────────────────────────────────────┘
```

**Key Features:**
- Diagnoses ranked by likelihood percentage
- ICD-10 codes displayed
- Supporting evidence for each diagnosis
- Color-coded urgency borders
- Evidence base statistics
- Tap any diagnosis for detailed view

---

#### Tab 3: Labs
```
┌─────────────────────────────────────┐
│  ← Robert S.                    ⋮   │
├─────────────────────────────────────┤
│ Overview Diagnosis [Labs] Treat... │
├─────────────────────────────────────┤
│                                     │
│  Lab Values                         │
│                                     │
│  ┌─────────────────────────────┐   │
│  │ HEMOGLOBIN                  │   │
│  │ [      8.2        ] g/dL    │   │
│  └─────────────────────────────┘   │
│                                     │
│  ┌─────────────────────────────┐   │
│  │ WBC COUNT                   │   │
│  │ [     15.2        ] ×10³/μL │   │
│  └─────────────────────────────┘   │
│                                     │
│  ┌─────────────────────────────┐   │
│  │ CREATININE                  │   │
│  │ [      1.8        ] mg/dL   │   │
│  └─────────────────────────────┘   │
│                                     │
│  ┌─────────────────────────────┐   │
│  │ TROPONIN                    │   │
│  │ [      0.8        ] ng/mL   │   │
│  └─────────────────────────────┘   │
│                                     │
│  [    Analyze Results    ]          │
│                                     │
│  AI Interpretation                  │
│                                     │
│  ┌─────────────────────────────┐   │ ← Red left border
│  │ Hemoglobin      8.2 g/dL    │   │
│  │ Normal: 13.5-17.5 g/dL      │   │
│  │                             │   │
│  │ Moderate anemia. Consider   │   │
│  │ iron studies and transfusion│   │
│  │ threshold.                  │   │
│  └─────────────────────────────┘   │
│                                     │
│  ┌─────────────────────────────┐   │ ← Red left border
│  │ Troponin        0.8 ng/mL   │   │
│  │ Normal: <0.04 ng/mL         │   │
│  │                             │   │
│  │ CRITICAL: Elevated troponin │   │
│  │ consistent with myocardial  │   │
│  │ injury.                     │   │
│  └─────────────────────────────┘   │
│                                     │
│  Clinical Correlation               │
│  ┌─────────────────────────────┐   │
│  │ Lab pattern suggests ACS    │   │
│  │ with possible bleeding.     │   │
│  │ Consider serial troponins   │   │
│  │ and GI workup for anemia.   │   │
│  └─────────────────────────────┘   │
│                                     │
│  [📄 Export Lab Report]             │
│                                     │
└─────────────────────────────────────┘
```

**Key Features:**
- Full-width input fields stacked vertically
- One-tap "Analyze Results" button
- AI interpretation with normal ranges
- Abnormal values highlighted with red borders
- Clinical correlation synthesizing all results
- Export functionality

---

#### Tab 4: Treatment
```
┌─────────────────────────────────────┐
│  ← Robert S.                    ⋮   │
├─────────────────────────────────────┤
│ Overview Diagnosis Labs [Treatment] │
├─────────────────────────────────────┤
│                                     │
│  ┌─────────────────────────────┐   │
│  │ TIME CRITICAL               │   │ ← Red background
│  │ Door-to-balloon: 90 minutes │   │
│  └─────────────────────────────┘   │
│                                     │
│  1. Immediate Actions               │
│  ┌─────────────────────────────┐   │
│  │ ☐ Call cardiology consult   │   │
│  │ ☐ Aspirin 325mg PO          │   │
│  │ ☐ Oxygen if SpO2 < 90%      │   │
│  │ ☐ Establish IV access       │   │
│  └─────────────────────────────┘   │
│                                     │
│  2. Diagnostic Workup               │
│  ┌─────────────────────────────┐   │
│  │ ☑ 12-lead ECG (stat)        │   │
│  │ ☑ Cardiac troponin          │   │
│  │ ☐ Chest X-ray               │   │
│  └─────────────────────────────┘   │
│                                     │
│  [📋 View Full STEMI Protocol]      │
│  [💊 Check Drug Interactions]       │
│                                     │
└─────────────────────────────────────┘
```

**Key Features:**
- Time-critical alerts at top
- Interactive checklists (tap to toggle)
- Organized by protocol steps
- Links to full protocols
- Drug interaction checking
- Clear visual hierarchy

---

#### Tab 5: Notes
```
┌─────────────────────────────────────┐
│  ← Robert S.                    ⋮   │
├─────────────────────────────────────┤
│ Overview Diagnosis Labs Treat [Notes]│
├─────────────────────────────────────┤
│                                     │
│  Clinical Note                      │
│                                     │
│  ┌─────────────────────────────┐   │
│  │ CHIEF COMPLAINT: Chest pain │   │
│  │                             │   │
│  │ HPI: 45 y/o male presents   │   │
│  │ with acute onset substernal │   │
│  │ chest pain radiating to left│   │
│  │ arm, associated with SOB... │   │
│  │                             │   │
│  │ VITALS:                     │   │
│  │ BP: 160/95 | HR: 102        │   │
│  │ SpO2: 96% | Temp: 98.2°F    │   │
│  │                             │   │
│  │ ASSESSMENT:                 │   │
│  │ 1. Acute Myocardial         │   │
│  │    Infarction (I21.9)       │   │
│  │    HIGH (78%)               │   │
│  │ 2. Unstable Angina (I20.0)  │   │
│  │    CONSIDER (65%)           │   │
│  │                             │   │
│  │ PLAN:                       │   │
│  │ - STAT ECG                  │   │
│  │ - Cardiac biomarkers        │   │
│  │ - Aspirin 325mg PO given    │   │
│  │ - Cardiology consult        │   │
│  │                             │   │
│  │ DISPOSITION: Admit CCU      │   │
│  └─────────────────────────────┘   │
│                                     │
│  [     Copy to Clipboard     ]      │
│  [       ✏️ Edit Note         ]      │
│  [      📧 Send to EMR        ]      │
│                                     │
└─────────────────────────────────────┘
```

**Key Features:**
- Auto-generated SOAP format
- Monospace font for clinical documentation
- Copy, edit, and send functions
- Professional medical documentation style
- Includes all relevant patient data

---

### Level 3: Analytics Dashboard

```
┌─────────────────────────────────────┐
│  ← Analytics                    ↗   │
├─────────────────────────────────────┤
│ [Daily] Weekly Monthly Yearly       │
├─────────────────────────────────────┤
│                                     │
│  Today - December 28, 2025          │
│                                     │
│  ┌─────────────┬─────────────┐     │
│  │     12      │      3      │     │
│  │   Patients  │   Urgent    │     │
│  │  +3 from    │  +1 from    │     │
│  │  yesterday  │  yesterday  │     │
│  └─────────────┴─────────────┘     │
│  ┌─────────────┬─────────────┐     │
│  │    2.4h     │      8      │     │
│  │  Avg Time   │  Completed  │     │
│  │  -0.3h      │  4 active   │     │
│  └─────────────┴─────────────┘     │
│                                     │
│  Hourly Patient Volume              │
│  ┌─────────────────────────────┐   │
│  │     ▂▄▅█▇▄▃▂               │   │
│  │ 8AM 10 12 2PM 4 6 8 Now    │   │
│  └─────────────────────────────┘   │
│                                     │
│  Today's Diagnoses                  │
│  ┌─────────────────────────────┐   │
│  │ MI              ████████ 2  │   │
│  │ Pneumonia       ████████ 3  │   │
│  │ GERD            ████████ 4  │   │
│  └─────────────────────────────┘   │
│                                     │
│  Urgency Breakdown                  │
│  ┌───────┬───────┬───────┐         │
│  │   3   │   5   │   4   │         │ ← Red/Orange/Green
│  │Critical│Moderate│Routine│         │
│  └───────┴───────┴───────┘         │
│                                     │
└─────────────────────────────────────┘
```

**Four Time Views:**
- **Daily**: Hourly volume, today's diagnoses, urgency breakdown
- **Weekly**: Daily volume chart, top 5 diagnoses, outcomes
- **Monthly**: Weekly trends, top 10 diagnoses, performance metrics
- **Yearly**: Monthly volume, diagnosis categories, annual summary

---

### Level 4: Settings

```
┌─────────────────────────────────────┐
│  ← Settings                         │
├─────────────────────────────────────┤
│                                     │
│  ┌─────────────────────────────┐   │
│  │ [SC] Dr. Sarah Chen      →  │   │
│  │      Internal Medicine      │   │
│  │      License: CA-123456 ✓   │   │
│  └─────────────────────────────┘   │
│                                     │
│  GENERAL PREFERENCES                │
│  ┌─────────────────────────────┐   │
│  │ Voice Input             [●] │   │
│  │ Enable voice-to-text        │   │
│  ├─────────────────────────────┤   │
│  │ Auto-save Notes         [●] │   │
│  │ Automatically save notes    │   │
│  ├─────────────────────────────┤   │
│  │ Offline Mode            [●] │   │
│  │ Access cached data          │   │
│  ├─────────────────────────────┤   │
│  │ Language          [English ▾]│   │
│  │ App display language        │   │
│  └─────────────────────────────┘   │
│                                     │
│  NOTIFICATIONS                      │
│  ┌─────────────────────────────┐   │
│  │ Critical Lab Results    [●] │   │
│  │ Alert for abnormal values   │   │
│  ├─────────────────────────────┤   │
│  │ Patient Follow-ups      [●] │   │
│  │ Reminders for check-ins     │   │
│  ├─────────────────────────────┤   │
│  │ Drug Interactions       [●] │   │
│  │ Medication conflicts        │   │
│  ├─────────────────────────────┤   │
│  │ New Guidelines          [○] │   │
│  │ Clinical guideline updates  │   │
│  ├─────────────────────────────┤   │
│  │ Sound                   [●] │   │
│  │ Notification sounds         │   │
│  └─────────────────────────────┘   │
│                                     │
│  CLINICAL SETTINGS                  │
│  ┌─────────────────────────────┐   │
│  │ Specialty Focus [Cardiology▾]│   │
│  │ Prioritize diagnoses        │   │
│  ├─────────────────────────────┤   │
│  │ AI Confidence      [50% ▾]  │   │
│  │ Minimum threshold           │   │
│  ├─────────────────────────────┤   │
│  │ Show ICD-10 Codes       [●] │   │
│  │ Display with diagnoses      │   │
│  ├─────────────────────────────┤   │
│  │ Auto-order Labs         [●] │   │
│  │ Suggest labs for diagnoses  │   │
│  ├─────────────────────────────┤   │
│  │ Evidence Citations      [●] │   │
│  │ Show PubMed references      │   │
│  └─────────────────────────────┘   │
│                                     │
│  [Scroll for more sections...]      │
│                                     │
└─────────────────────────────────────┘
```

**Settings Sections:**
1. General Preferences (4 controls)
2. Notifications (5 controls)
3. Clinical Settings (5 controls)
4. Display & Interface (5 controls)
5. Privacy & Security (4 controls)
6. Data Management (3 items + actions)
7. Integrations (3 systems)
8. About (version, terms, support)

---

## Component Library

### 1. Patient Card
```
Component: PatientCard
Size: Full width × 120px
States: Default, Active, Pressed

Structure:
┌─────────────────────────────────────┐
│ NAME                      URGENCY   │
│ Age • Gender • Timestamp            │
│ CC: Chief complaint text...         │
└─────────────────────────────────────┘

Border Left: 6px solid (color based on urgency)
Background: White with subtle gradient on urgent/moderate
Border Radius: 16px
Padding: 20px
Gap: 12px between elements
```

### 2. Diagnosis Card
```
Component: DiagnosisCard
Size: Full width × Variable
States: Default, Expanded

Structure:
┌─────────────────────────────────────┐
│ DIAGNOSIS NAME                      │
│ XX% likelihood • ICD-10: XXX        │
│                                     │
│ Supporting: Evidence text...        │
└─────────────────────────────────────┘

Border Left: 6px solid (color based on urgency)
Border Radius: 16px
Padding: 20px
```

### 3. Lab Result Card
```
Component: LabResultCard
Size: Full width × Variable

Structure:
┌─────────────────────────────────────┐
│ LAB NAME              VALUE UNITS   │
│ Normal: XX-XX units                 │
│                                     │
│ Interpretation text...              │
└─────────────────────────────────────┘

Border Left: 4px solid (green=normal, red=abnormal)
Border Radius: 16px
Padding: 20px
```

### 4. Stat Card
```
Component: StatCard
Size: ~170px × 100px

Structure:
┌─────────────────┐
│       XX        │  ← Large number
│   Label Text    │
│  +X% change     │  ← Trend indicator
└─────────────────┘

Border: 2px solid #e2e8f0
Border Radius: 16px
Padding: 20px
Text Align: Center
```

### 5. Toggle Switch
```
Component: ToggleSwitch
Size: 51px × 28px
States: Off, On

Off: Background #cbd5e1, Circle left
On: Background purple gradient, Circle right
Animation: 0.3s ease
```

### 6. Primary Button
```
Component: PrimaryButton
Size: Full width × 48px

Background: Purple gradient
Color: White
Font Weight: 600
Border Radius: 16px
Padding: 16px
Active State: Translate Y +2px
```

### 7. Secondary Button
```
Component: SecondaryButton
Size: Full width × 44px

Background: White
Border: 2px solid #e2e8f0
Color: #475569
Font Weight: 500
Border Radius: 14px
Padding: 14px
Active State: Background #f8fafc
```

### 8. Tab Button
```
Component: TabButton
Size: Auto × 40px

Default: Background #f8fafc, Color #64748b
Active: Purple gradient background, Color white
Border Radius: 12px
Padding: 10px 16px
Font Weight: 600
```

### 9. Input Field
```
Component: InputField
Size: Full width × 48px

Border: 2px solid #e2e8f0
Border Radius: 12px
Padding: 14px 16px
Font Size: 17px
Focus: Border #667eea, Shadow 0 0 0 3px rgba(102,126,234,0.1)
```

### 10. Section Header
```
Component: SectionLabel
Size: Auto × Auto

Font Size: 13px
Font Weight: 600
Color: #64748b
Text Transform: Uppercase
Letter Spacing: 0.5px
Margin Bottom: 12px
```

---

## User Flows

### Flow 1: New Patient Diagnosis

```
Start → Home Screen
  ↓
Tap [+ New Patient]
  ↓
Enter patient info (name, age, gender)
  ↓
Enter chief complaint
  ↓
Tap [Create Patient & Start Diagnosis]
  ↓
Patient Profile opens (Overview tab)
  ↓
Review patient info and vitals
  ↓
Navigate to Diagnosis tab
  ↓
View differential diagnoses
  ↓
Tap top diagnosis for details
  ↓
Navigate to Labs tab
  ↓
Enter lab values
  ↓
Tap [Analyze Results]
  ↓
Review AI interpretation
  ↓
Navigate to Treatment tab
  ↓
Review protocol
  ↓
Check off completed actions
  ↓
Navigate to Notes tab
  ↓
Review auto-generated note
  ↓
Tap [Send to EMR]
  ↓
End
```

### Flow 2: Review Existing Patient

```
Start → Home Screen
  ↓
Search or scroll to find patient
  ↓
Tap patient card
  ↓
Patient Profile opens (Overview tab)
  ↓
Review current status
  ↓
Navigate to desired tab (Diagnosis/Labs/Treatment/Notes)
  ↓
Perform action (view results, update treatment, etc.)
  ↓
Return to Home
  ↓
End
```

### Flow 3: View Analytics

```
Start → Home Screen
  ↓
Tap [📊] icon in header
  ↓
Analytics screen opens (Daily tab default)
  ↓
Review today's metrics
  ↓
Tap [Weekly/Monthly/Yearly] tab
  ↓
Review longer-term trends
  ↓
Scroll to view all charts and data
  ↓
Tap [↗] to export (optional)
  ↓
Return to Home
  ↓
End
```

### Flow 4: Configure Settings

```
Start → Home Screen
  ↓
Tap [⚙️] icon in header
  ↓
Settings screen opens
  ↓
Scroll to desired section
  ↓
Toggle switches or select dropdowns
  ↓
Changes auto-save
  ↓
Return to Home
  ↓
Settings applied
  ↓
End
```

---

## Responsive Behavior

### Mobile (< 450px)
- Phone frame fills screen (calc(100vh - 20px))
- All cards stack vertically
- Tab navigation horizontal scroll
- Reduced padding on small screens
- Font sizes scale proportionally

### Tablet (450px - 768px)
- Maintain phone-like interface
- Slightly larger touch targets
- Keep single-column layout
- Center content with max-width

### Desktop (> 768px)
- Center phone frame (max-width: 390px)
- Add background gradient
- Maintain mobile-first design
- No multi-column layouts

---

## Accessibility

### Color Contrast
- All text meets WCAG AA standards
- Minimum contrast ratio: 4.5:1 for normal text
- Color never sole indicator (always paired with borders/text)

### Touch Targets
- Minimum tap target: 44×44px (iOS standard)
- Adequate spacing between tappable elements
- Clear visual feedback on interaction

### Typography
- Base font size: 15px (readable on mobile)
- Adjustable in settings (Small/Medium/Large)
- System fonts for native feel and accessibility

### Motion
- Reduced motion respects system preferences
- Optional: Disable animations in settings
- Transitions: 0.2-0.3s (not too fast)

---

## Design Notes

### Why Patient-Centric Architecture?
Originally designed with symptom-input-first workflow, but feedback from doctors revealed they need complete patient context for clinical decisions. Restructured to organize everything around individual patient profiles with tabbed navigation.

### Why Color-Coding Without Emojis?
Emojis felt unprofessional for medical software. Color-coded borders provide instant visual urgency indicators while maintaining a clean, clinical aesthetic.

### Why Vertical Lab Inputs?
Initially used 2-column grid, but vertical stacking provides:
- Better readability of lab names
- Easier tap targets on mobile
- No text truncation
- Clearer visual hierarchy

### Why Tab Navigation?
Five distinct contexts (Overview, Diagnosis, Labs, Treatment, Notes) needed clear separation. Tabs provide:
- Quick context switching
- Reduced cognitive load
- Familiar iOS pattern
- Each tab focused on single task

---

**End of Wireframes Document**
