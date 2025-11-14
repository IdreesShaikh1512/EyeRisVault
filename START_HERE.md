# 🚀 HOW TO RUN IRISVAULT - Step by Step Guide

## 📋 Quick Start (Copy & Paste Commands)

### Step 1: Start MongoDB
**Make sure MongoDB is running first!**

Windows (if installed as service, it should auto-start):
```powershell
# Check if running in Services, or start manually:
mongod
```

### Step 2: Setup and Start Backend (Terminal 1)

Open PowerShell or Command Prompt and run:

```powershell
# Navigate to backend
cd "C:\Users\IDREES SHAIKH\Downloads\IrisVault-main\IrisVault-main\backend"

# Create virtual environment (first time only)
python -m venv venv

# Activate virtual environment
.\venv\Scripts\activate

# Install dependencies (first time only)
pip install -r requirements.txt

# Start the backend server
uvicorn server:app --reload --host 0.0.0.0 --port 8000
```

**✅ Backend is running when you see:**
```
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
INFO:     Application startup complete.
✅ MongoDB connection established
```

**Keep this terminal open!**

### Step 3: Setup and Start Frontend (Terminal 2)

**Open a NEW PowerShell or Command Prompt window** and run:

```powershell
# Navigate to frontend
cd "C:\Users\IDREES SHAIKH\Downloads\IrisVault-main\IrisVault-main\frontend"

# Install dependencies (first time only)
npm install

# Start the frontend
npm start
```

**✅ Frontend is running when you see:**
```
Compiled successfully!

You can now view frontend in the browser.

  Local:            http://localhost:3000
```

**Your browser should automatically open to http://localhost:3000**

### Step 4: Use the Application

1. **Open Browser**: Go to `http://localhost:3000`
2. **Enroll**: Click "Enroll Now" to create a new account
3. **Login**: Click "ATM Login" to authenticate
4. **Dashboard**: Perform transactions after login
5. **Admin**: Click "Admin Portal" for system stats

---

## 🐛 Common Issues & Solutions

### ❌ Error: "MongoDB connection failed"
**Solution**: Start MongoDB first
```powershell
# Check if MongoDB is installed
mongod --version

# If not installed, download from: https://www.mongodb.com/try/download/community
```

### ❌ Error: "Module not found" or "No module named..."
**Solution**: Install dependencies
```powershell
cd backend
.\venv\Scripts\activate
pip install -r requirements.txt
```

### ❌ Error: "Port 8000 already in use"
**Solution**: Use a different port
```powershell
uvicorn server:app --reload --port 8001
```
Then update frontend `.env` file: `REACT_APP_BACKEND_URL=http://localhost:8001`

### ❌ Error: "Port 3000 already in use"
**Solution**: React will ask to use another port automatically, just press Y

### ❌ Camera not working
**Solution**: 
- Make sure you're on `localhost` or `https`
- Grant camera permissions in browser
- Check browser console (F12) for errors

### ❌ Frontend can't connect to backend
**Solution**: 
- Make sure backend is running on port 8000
- Check browser console (F12) for errors
- Verify both are running

---

## 📝 First Time Setup Checklist

- [ ] Python 3.9+ installed (`python --version`)
- [ ] Node.js 18+ installed (`node --version`)
- [ ] MongoDB installed and running
- [ ] Virtual environment created (`python -m venv venv`)
- [ ] Backend dependencies installed (`pip install -r requirements.txt`)
- [ ] Frontend dependencies installed (`npm install`)
- [ ] Backend server running (`uvicorn server:app --reload`)
- [ ] Frontend server running (`npm start`)
- [ ] Browser opened to `http://localhost:3000`

---

## 🎯 Quick Test

After starting both servers, test if everything works:

1. **Backend Test**: Open `http://localhost:8000/docs` - Should show API documentation
2. **Frontend Test**: Open `http://localhost:3000` - Should show landing page
3. **Enrollment Test**: Click "Enroll Now" and fill the form
4. **Camera Test**: Grant camera permissions when prompted

---

## 📞 Need Help?

If you see any errors:
1. Check the terminal output (both backend and frontend)
2. Check browser console (Press F12)
3. Verify MongoDB is running
4. Make sure all dependencies are installed

---

## 🎉 Success!

Once both servers are running, you should see:
- ✅ Backend: `http://localhost:8000` - API is ready
- ✅ Frontend: `http://localhost:3000` - Web app is ready
- ✅ MongoDB: Connected and ready

**Happy coding! 🚀**

