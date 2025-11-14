╔════════════════════════════════════════════════════════════════════════════╗
║                     🚀 IRISVAULT - HOW TO RUN                              ║
║                        EASIEST WAY EVER!                                   ║
╚════════════════════════════════════════════════════════════════════════════╝


═════════════════════════════════════════════════════════════════════════════
  ⭐ STEP 1: INSTALL EVERYTHING (Do this once)
═════════════════════════════════════════════════════════════════════════════

  📁 Double-click this file:  install_all.bat
  
  This will automatically:
    ✅ Create virtual environment
    ✅ Install all Python packages
    ✅ Install all Node.js packages
    ✅ Set up everything needed
  
  ⏱️  Takes about 2-5 minutes (depending on internet speed)


═════════════════════════════════════════════════════════════════════════════
  ⭐ STEP 2: START MONGODB (Required!)
═════════════════════════════════════════════════════════════════════════════

  🔍 Check if MongoDB is running:
  
    Option A:
      1. Press Windows Key + R
      2. Type: services.msc
      3. Press Enter
      4. Look for "MongoDB"
      5. If not running → Right-click → Start
    
    Option B:
      - Open Command Prompt
      - Type: mongod
      - Press Enter
      - Leave this window open!


═════════════════════════════════════════════════════════════════════════════
  ⭐ STEP 3: START THE APPLICATION
═════════════════════════════════════════════════════════════════════════════

  🎯 EASIEST WAY:
  
    📁 Double-click:  start_both.bat
    
    This will:
      ✅ Start backend server automatically
      ✅ Start frontend server automatically
      ✅ Open in separate windows
      ✅ Your browser will open to http://localhost:3000
    
    🎉 That's it! You're done!


  OR start separately:
  
    📁 Terminal 1: Double-click  backend\start_backend.bat
    📁 Terminal 2: Double-click  frontend\start_frontend.bat


═════════════════════════════════════════════════════════════════════════════
  ✅ CHECK IF IT'S WORKING
═════════════════════════════════════════════════════════════════════════════

  After starting, check:
  
  ✅ Backend window shows: "Uvicorn running on http://0.0.0.0:8000"
  ✅ Frontend window shows: "Compiled successfully!"
  ✅ Browser opened to: http://localhost:3000
  ✅ You can see the landing page with "IRISVAULT" logo


═════════════════════════════════════════════════════════════════════════════
  🐛 TROUBLESHOOTING
═════════════════════════════════════════════════════════════════════════════

  ❌ "MongoDB connection failed"
     → Make sure MongoDB is running (Step 2)
  
  ❌ "Module not found" or "No module named..."
     → Run install_all.bat again
  
  ❌ "Port already in use"
     → Close other programs using port 8000 or 3000
  
  ❌ Camera not working
     → Make sure you're on localhost
     → Grant camera permissions when browser asks
  
  ❌ Frontend can't connect to backend
     → Make sure backend is running first
     → Wait a few seconds for backend to start


═════════════════════════════════════════════════════════════════════════════
  📁 FILES CREATED FOR YOU
═════════════════════════════════════════════════════════════════════════════

  📄 install_all.bat              → Installs everything (run once)
  📄 start_both.bat               → Starts both servers (EASIEST!)
  📄 backend/start_backend.bat    → Starts backend only
  📄 frontend/start_frontend.bat  → Starts frontend only
  📄 QUICK_START.md               → Quick reference guide
  📄 START_HERE.md                → Detailed instructions
  📄 HOW_TO_RUN.txt              → Text version


═════════════════════════════════════════════════════════════════════════════
  🎯 WHAT TO DO NOW
═════════════════════════════════════════════════════════════════════════════

  1. Make sure MongoDB is running
  2. Double-click: install_all.bat (first time only)
  3. Double-click: start_both.bat
  4. Wait for browser to open
  5. Start using the app! 🎉


═════════════════════════════════════════════════════════════════════════════
  💡 TIPS
═════════════════════════════════════════════════════════════════════════════

  • Keep the terminal windows open while using the app
  • To stop the servers, close the terminal windows
  • You can re-run start_both.bat anytime
  • install_all.bat only needs to run once (unless you delete venv or node_modules)


═════════════════════════════════════════════════════════════════════════════

  🎉 READY TO GO!
  
  Just double-click: start_both.bat
  
  That's it! Enjoy your IrisVault application! 🚀

═════════════════════════════════════════════════════════════════════════════

