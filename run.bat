@echo off
REM Anivexa-API sidecar (Node, zero deps) — runs on http://127.0.0.1:8002
REM (anidoom backend expects it there; see ANIVEXA_URL in backend/.env)
cd /d "%~dp0"
where node >nul 2>nul || (echo Node.js is required. Install from https://nodejs.org & exit /b 1)
set PORT=8002
node server.js
