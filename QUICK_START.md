# ⚡ QUICK START GUIDE - Run in 3 Minutes!

## 🎯 Step-by-Step Instructions

### Step 1: Install Dependencies (First Time Only)

**Easiest Way:**
1. Double-click: `install_all.bat`
2. Wait for installation to complete
3. Done! ✅

**OR Manual Way:**
```batch
cd backend
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt

cd ..\frontend
npm install
```

---

### Step 2: Make Sure MongoDB is Running

**Option A: Check Services**
1. Press `Win + R`
2. Type: `services.msc`
3. Find "MongoDB"
4. Right-click → Start (if not running)

**Option B: Start Manually**
```batch
mongod
```
Leave this window open!

---

### Step 3: Start the Application

**EASIEST - Double-click:** `start_both.bat`

This will:
- ✅ Start backend automatically
- ✅ Start frontend automatically  
- ✅ Open in separate windows
- ✅ Your browser should open to http://localhost:3000

**OR Start Separately:**

**Terminal 1 (Backend):**
```batch
cd backend
start_backend.bat
```

**Terminal 2 (Frontend):**
```batch
cd frontend
start_frontend.bat
```

---

## 🎉 You're Done!

Open your browser and go to: **http://localhost:3000**

- **Frontend**: http://localhost:3000
- **Backend**: http://localhost:8000  
- **API Docs**: http://localhost:8000/docs

---

## 🐛 Common Errors & Fixes

| Error | Solution |
|-------|----------|
| `MongoDB connection failed` | Start MongoDB (Step 2) |
| `Module not found` | Run `install_all.bat` |
| `Port already in use` | Close other apps on port 8000/3000 |
| `Camera not working` | Grant camera permissions |
| `npm not found` | Install Node.js from nodejs.org |

---

## 📁 What Each File Does

| File | Purpose |
|------|---------|
| `install_all.bat` | Installs all dependencies |
| `start_both.bat` | Starts both servers (easiest!) |
| `backend/start_backend.bat` | Starts backend only |
| `frontend/start_frontend.bat` | Starts frontend only |
| `HOW_TO_RUN.txt` | Text guide |
| `START_HERE.md` | Detailed guide |

---

## ✅ Quick Checklist

Before starting:
- [ ] MongoDB is running
- [ ] Dependencies installed (`install_all.bat`)
- [ ] Ready to start!

After starting:
- [ ] Backend running on port 8000
- [ ] Frontend running on port 3000
- [ ] Browser opened automatically
- [ ] Can see the landing page

---

## 🚀 Using the Application

1. **Enroll**: Click "Enroll Now" → Fill form → Capture iris → Done!
2. **Login**: Click "ATM Login" → Enter account → Capture iris → Dashboard!
3. **Transactions**: Use Dashboard to withdraw/deposit/check balance
4. **Admin**: Click "Admin Portal" to view users and logs

---

**Need more help?** Check `README.md` or `START_HERE.md`

**Happy coding! 🎉**

