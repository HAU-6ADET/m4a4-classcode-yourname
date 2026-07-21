# Rubric - m4a4 Monster Detail screen (100 points)

The Module 4 finale: a full, single-monster detail screen. Worth **100 points**,
split into an automated half and a design half (40 + 60 = 100). The automated
half confirms the required pieces exist; the design half judges how it looks as a
mobile screen (from the phone-framed screenshot) and how the code is built.

## Automated checks (40 pts, scored from the tests - not by hand)

| Check | Points |
| --- | --- |
| `student.json` is filled in | 5 |
| Scaffold with the monster name in the AppBar | 7 |
| Type shown in upper case (keyed `type`) | 7 |
| HP shown as current / max (keyed `hp`) | 7 |
| An HP bar is present (keyed `hpBar`) | 7 |
| Styled with a coloured Container, and laid out with Column + Row | 7 |
| **Automated subtotal** | **40** |

(The screen must also reflect a different monster - no hard-coded values.)

## Design rubric (60 pts, scored from the screenshot and code)

The AI scores ONLY this table (the automated half is scored by the tests). The
screenshot is a phone-framed capture at a mobile size - judge it as a real
mobile screen.

| Criterion | Max | Excellent (full marks) | Satisfactory (~60-80%) | Needs work (~0-40%) |
| --- | --- | --- | --- | --- |
| Visual design & hierarchy | 15 | clear focal header, the name/type/HP read in a sensible order, comfortable spacing | mostly clear, a little cramped or uneven | flat wall of text, no hierarchy |
| Use of colour / type identity | 12 | the type colour is used purposefully (header/badge) and looks intentional | colour present but arbitrary | no colour, or clashing/unreadable |
| HP bar quality | 10 | the bar visibly reflects the HP ratio and looks like a health bar | present but crude or mislabelled | token or broken |
| Layout on a phone | 10 | fits the phone, nothing overflows or is off-centre | minor overflow / alignment issues | overflow, cut-off, or empty screen |
| Code organization | 8 | small, well-named widgets; no dead code; values read from the model | workable but monolithic | messy, duplicated, or hard-coded |
| Completeness / polish | 5 | feels finished, something you would show | rough but complete | incomplete |

Design rubric total: 60 points. **Automated 40 + design 60 = 100.**

Notes for feedback: name the concept to revisit or ask a guiding question; never
hand over corrected code. Comment on both the visual design (from the screenshot)
and the code structure. Keep the language at a beginner's level and be
encouraging.
