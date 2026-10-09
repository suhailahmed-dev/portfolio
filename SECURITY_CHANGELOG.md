# Security Changelog & Repository Protection Audit

**Account:** `suhailahmed-dev`  
**Audit Date:** October 10, 2026  
**Auditor:** Senior GitHub Security Engineer & Repository Auditor  
**Status:** Completed & Enforced  

---

## 1. What Was Moved to Private (Level A — Private Core)

To protect commercial trading intellectual property and algorithmic execution source code from unauthorized cloning or public redistribution, the following repositories have been converted from **Public** to **Private**:

1. **`ZainForexAutoBot-MT5-Gold`** &rarr; **PRIVATE**
   - **Protected Assets:**
     - `MQL5/Experts/ZainForexAutoBot_Standalone.mq5` (1,200+ lines of complete MQL5 Expert Advisor source code)
     - `MQL5/Experts/ZainForexAutoBot.mq5`
     - `MQL5/Include/ZainBot/RiskEngine.mqh` (Proprietary 1% dynamic risk budgeting algorithm)
     - `MQL5/Include/ZainBot/NewsFilter.mqh` (Native MT5 economic calendar blackout scanner)
     - `MQL5/Include/ZainBot/MarketAnalysis.mqh` (M5 momentum & M15 POI confluence strategy)
     - `MQL5/Include/ZainBot/TradeExecution.mqh` (Order send & retry logic)
     - `MQL5/Include/ZainBot/CircuitBreakers.mqh` (Drawdown halts & profit locks)
   - **Public Status:** Repository is completely hidden from public view. System architecture and verified forward-test proof (75% Win Rate) remain documented on the public portfolio.

2. **`Sophi-Trading-Bot`** &rarr; **PRIVATE**
   - **Protected Assets:**
     - `execution/exchanges/binance_live.py` (Live Binance execution adapter)
     - `execution/exchanges/crypto_futures.py` (Futures execution engine)
     - `risk/funded_challenge.py` (Funded challenge drawdown constraints & daily loss circuit breaker)
     - `signals/confluence_strategy.py` (Multi-indicator trend & momentum confluence algorithms)
     - `portfolio/reconciliation.py` (Internal balance reconciler)
   - **Public Status:** Repository is completely hidden from public view. Telemetry (14,323 trades logged, 48H soak audit passed) remains showcased on the public portfolio.

---

## 2. What Was Removed from Public Exposure

The following sensitive files and internal endpoints were purged from public tracking via authenticated GitHub API calls:

1. **`APEX-Marketing-AI-CommandCenter`**
   - **`marketing_hub.db`**: Purged from repository. (Binary SQLite database containing internal brand profiles and work history).
   - **`CLIENT_TEST_LINK.txt`**: Purged from repository. (Contained temporary Cloudflare tunnel endpoint).
   - **`live_public_url.txt`**: Purged from repository. (Contained temporary Cloudflare tunnel endpoint).

2. **`Faceless-Video-Autopilot`**
   - **`mobile_url.txt`**: Purged from repository. (Contained temporary tunnel endpoint).

3. **`Sophi-Trading-Bot`**
   - **`current_mobile_url.txt`**: Purged from repository. (Contained temporary tunnelmole endpoint).

---

## 3. Public Showcases & Profile Updates

1. **Portfolio Website (`developer-portfolio/index.html`)**:
   - Replaced direct repository links for ZainForex AutoBot and SOPHI Engine with `[PROPRIETARY CORE // PRIVATE]` status badges and `REQUEST AUDIT / DEMO` access buttons leading to direct WhatsApp engagement.
   - Prevents external visitors, recruiters, or clients from encountering `404 Not Found` pages.
   - Showcases full technical architecture, execution flowcharts, and verified metrics without leaking source code.

2. **GitHub Profile README (`suhailahmed-dev/README.md`)**:
   - Updated trading bot listings to indicate `[PROPRIETARY CORE // PRIVATE]`, directing visitors to the interactive architecture breakdown on the live portfolio.

---

## 4. Credential Rotation & Manual Actions Review

- **Git History Secret Audit:**  
  A deep regex scan of all commits across all repositories revealed **ZERO exposed API keys, exchange secrets, or broker passwords** in commit history.
- **Rotation Requirements:**  
  Because live secrets were maintained strictly in local `.env` files (which were excluded by `.gitignore`), **no immediate credential revocation or rotation is required** for exchange accounts, broker accounts, or API keys.
- **Tunnel URL Ephemerality:**  
  Purged Cloudflare and Tunnelmole URLs are ephemeral session links that become automatically inactive once local background processes terminate.

---

## 5. Current Account Architecture

| Level | Repositories | Visibility | Purpose |
| :--- | :--- | :--- | :--- |
| **Level A (Private Core)** | `ZainForexAutoBot-MT5-Gold`<br>`Sophi-Trading-Bot`<br>`QuantumTrade-AI-Bot` | **PRIVATE** | Proprietary quantitative algorithms, live trading logic, and risk engines. |
| **Level B (Public Showcase)** | `APEX-Marketing-AI-CommandCenter`<br>`Faceless-Video-Autopilot`<br>`portfolio`<br>`suhailahmed-dev` | **PUBLIC** | Production architectures, agent workflows, safe documentation, and public engineering portfolio. |
