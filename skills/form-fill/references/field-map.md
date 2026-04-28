# YC Application Form - Field Selector Map

Verified against Summer 2026 form. Use these selectors directly - no discovery needed.

---

## Main Application (`apply.ycombinator.com/apps/[id]/edit`)

### Founders section
| Field | Selector |
|-------|----------|
| Who writes code | `textarea[name='others2']` |
| Looking for co-founder | `textarea[name='cofounder']` |

### Company section
| Field | Selector |
|-------|----------|
| Company name | `input[name='name']` |
| 50-char pitch | `input[name='describe']` |
| Company URL | `input[name='url']` |
| Product link | `input[name='productLink']` |
| Product credentials | `input[name='productCreds']` |
| Product description | `textarea[name='make']` |
| Location cities (format: City A, Country A / City B, Country B) | `input[name='where']` |
| Location explanation | `textarea[name='wherewhy']` |

### Progress section
| Field | Selector |
|-------|----------|
| How far along | `textarea[name='howfar']` |
| How long working | `textarea[name='worked']` |
| Tech stack + AI tools | `textarea[name='techstack']` |
| Active users / paying / top customer | `textarea[name='usernums']` |
| Revenue source breakdown | `textarea[name='revenuesource']` |
| Revenue growth notes | `textarea[name='growthrate']` |
| Reapply / pivot answer | `textarea[name='since']` |
| Incubator / accelerator | `textarea[name='acc']` |

### Idea section
| Field | Selector |
|-------|----------|
| Why this idea / domain expertise | `textarea[name='exp']` |
| Competitors | `textarea[name='get']` |
| Monetization | `textarea[name='money']` |
| Category | `select` (single select element) |
| Other ideas considered | `textarea[name='ideas']` |

### Equity section
| Field | Selector |
|-------|----------|
| Legal entity list | `textarea[name='inctype']` |
| Equity description | `textarea[name='incpercent']` |
| Investments list | `textarea[name='incinvest']` |
| Total raised (USD) | `input[name='investamount']` |
| Money in bank | `input[name='bank']` |
| Monthly burn | `input[name='burn']` |
| Runway | `input[name='runway']` |

### Curious section
| Field | Selector |
|-------|----------|
| Why YC | `textarea[name='whyapply']` |
| How heard | `textarea[name='howhear']` |

---

## Toggle buttons (Yes/No)

Click the `label[for='...']` selector. Labels trigger the hidden input.

| Question | Yes | No |
|----------|-----|----|
| Are people using your product? | `label[for='stage-2']` | `label[for='stage-1']` |
| Do you have revenue? | `label[for='revenue-yes']` | `label[for='revenue-no']` |
| Have you formed a legal entity? | `label[for='incyet-yes']` | `label[for='incyet-no']` |
| Have you taken any investment? | `label[for='investyet-yes']` | `label[for='investyet-no']` |
| Currently fundraising? | `label[for='currentlyraising-yes']` | `label[for='currentlyraising-no']` |

### Batch preference
| Option | Selector |
|--------|----------|
| Summer 2026 | `label[for='batchPreference-current']` |
| A batch after Summer 2026 | `label[for='batchPreference-future']` |

---

## Founder Profile (`apply.ycombinator.com/bio/[id]/edit`)

The profile page uses a custom form with section navigation. Navigate via the "Edit profile" link on the main application Founders section.

### Verifying current state
Run `browser_evaluate` with this to see all field names and values at once:
```js
() => [...document.querySelectorAll('textarea,input[type="text"],input:not([type])')].map(el => `${el.tagName.toLowerCase()}[name="${el.name}"] = "${el.value.substring(0,40)}"`).join('\n')
```

---

## Notes

- Revenue table (6-month) fields have `name=""` - they're unnamed inputs. Only visible when "Do you have revenue?" is set to Yes. Fill with 0 for zero-revenue months.
- City autocomplete (`input[name='city']` on profile page) requires typing the city name, waiting for dropdown, then clicking the option.
- Education and work history use "Add" buttons to create entries - these require clicks. Always ask founder to confirm before clicking Add buttons.
- File upload fields (founder video, demo, coding session) cannot be triggered by Claude. Scroll to the field, tell the founder exactly what to upload, and wait for confirmation.
