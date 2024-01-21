# 0x19. Postmortem
![IMAGE](https://telegra.ph/file/4fa5489ef42aca17344d8.gif?raw=true)
### Issue Summary:

Duration: January 19, 2024, 10:00 AM - 1:00 PM (UTC)
Impact: AquaBills, our water billing system, experienced an unexpected glitch, resulting in overcharging customers. Approximately 25% of customers were affected during this incident.

## Timeline:

**10:00 AM:** Unusual billing reports detected, indicating higher-than-normal charges reported by customers.

**10:15 AM:** issued an investigation to identify the root cause of the billing discrepancies.

**11:30 AM:** Assumed the issue might be tied to recent updates in the billing algorithm, which was was a waste of time since the core issue wasnt fixed at all.

**12:00 PM:** The issue escalated since even after notifiyng customers to wait until the bug was fixed, some were still paying.

**12:30 PM:** A sneaky bug was found, latest paid payments were not reflecting so some users were still beign charged again.

**1:00 PM:** we initiated a rollback to the previous stable version, and began update the code and check for some unidentified bugs.

### Root Cause and Resolution:

**Root Cause:** The overcharging issue was caused by a bug which prevented latest payments from beign reflected, leading to miscalculations for specific customer accounts.

**Resolution:** initiated a rollback to the previous stable version, and began addressing the software bugs and ensuring accurate billing calculations.

### **Corrective and Preventative Measures:**

**Improvements/Fixes:**
Conducted a comprehensive code review to identify and rectify potential bugs in the billing system.

More Code reviews and testings must be done to avoid the risk of future billing discrepancies.

Implemented additional safeguards in the billing algorithm to detect and prevent similar issues.

**Tasks to Address the Issue:**

**Short-Term:**
Issued prompt refunds or credits to affected customers and communicated transparently about the billing error.
developed.

**Long-Term:** Regular code reviewes and testing,
code scanning to check for any outdated dependacies, Added a github workflows.
