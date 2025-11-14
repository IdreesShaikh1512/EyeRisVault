# 🚀 HOW TO RUN IRISVAULT - EASIEST WAY

## ✅ QUICK START (Just 3 Steps!)

### Step 1: Install Everything (First Time Only)

**Double-click this file:** `install_all.bat`

This will install all dependencies automatically!

---

### Step 2: Make Sure MongoDB is Running

**Check if MongoDB is running:**
- Press `Windows Key + R`
- Type: `services.msc`
- Look for "MongoDB" service
- If not running, right-click and select "Start"

**OR manually start MongoDB:**
- Open Command Prompt
- Type: `mongod`
- Leave it running

---

### Step 3: Start the Application

**Option A: EASIEST (Recommended)**
```
Double-click: start_both.bat
```
This starts both backend and frontend automatically in separate windows!

**Option B: Start Separately**
```
Double-click: backend\start_backend.bat    (Terminal 1)
Double-click: frontend\start_frontend.bat  (Terminal 2)
```

---

## 🎉 That's It!

Your browser should automatically open to: **http://localhost:3000**

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:8000
- **API Docs**: http://localhost:8000/docs

---

## 🐛 Having Issues?

### "MongoDB connection failed"
→ Make sure MongoDB is running (see Step 2)

### "Module not found" or missing packages
→ Run `install_all.bat` again

### Port already in use
→ Close other applications using port 8000 or 3000
→ Or edit the batch files to use different ports

### Camera not working
→ Make sure you're on `localhost`
→ Grant camera permissions when browser asks

---

## 📋 Files Created for You

- ✅ `install_all.bat` - Installs all dependencies
- ✅ `start_both.bat` - Starts both servers
- ✅ `backend/start_backend.bat` - Starts backend only
- ✅ `frontend/start_frontend.bat` - Starts frontend only
- ✅ `HOW_TO_RUN.txt` - Text guide
- ✅ `START_HERE.md` - Detailed guide

---

## 📞 Need More Help?

Check these files:
- `README.md` - Full documentation
- `START_HERE.md` - Detailed step-by-step
- `HOW_TO_RUN.txt` - Text version of instructions

---

**Enjoy your IrisVault application! 🎉**

