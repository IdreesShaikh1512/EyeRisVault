# Quick Setup Steps for IrisVault

## ⚡ Quick Start Guide

Follow these steps to get IrisVault running on your system:

### Step 1: Prerequisites Check

Ensure you have:
- ✅ Python 3.9+ installed
- ✅ Node.js 18+ and npm/yarn installed
- ✅ MongoDB installed and running
- ✅ Webcam available

### Step 2: Backend Setup

```bash
# Navigate to backend directory
cd IrisVault-main/backend

# Create virtual environment (recommended)
python -m venv venv

# Activate virtual environment
# Windows:
venv\Scripts\activate
# macOS/Linux:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Create .env file (optional - defaults are provided)
# Copy the content from backend/.env.example or create with:
# MONGO_URL=mongodb://localhost:27017
# DB_NAME=irisvault
# CORS_ORIGINS=http://localhost:3000
# BIOMETRIC_KEY=your-secret-key-here

# Start MongoDB (if not running as service)
# Windows: Check Services or run mongod
# macOS: brew services start mongodb-community
# Linux: sudo systemctl start mongod

# Start backend server
uvicorn server:app --reload --host 0.0.0.0 --port 8000
```

Backend will run at: **http://localhost:8000**

### Step 3: Frontend Setup

Open a NEW terminal window:

```bash
# Navigate to frontend directory
cd IrisVault-main/frontend

# Install dependencies
npm install
# OR
yarn install

# Create .env file (optional - default is http://localhost:8000)
# REACT_APP_BACKEND_URL=http://localhost:8000

# Start frontend development server
npm start
# OR
yarn start
```

Frontend will run at: **http://localhost:3000**

### Step 4: Access the Application

1. Open your browser and go to: **http://localhost:3000**
2. Click "Enroll Now" to register a new user
3. Fill in your details and capture iris biometrics
4. Click "ATM Login" to authenticate with iris recognition
5. Access the Dashboard to perform transactions
6. Click "Admin Portal" to view system statistics

## 🔧 Troubleshooting

### Backend Issues

**Port 8000 already in use:**
```bash
# Use a different port
uvicorn server:app --reload --port 8001
```

**MongoDB Connection Error:**
- Ensure MongoDB is running: `mongod` or check services
- Verify MONGO_URL in .env is correct
- Default: `mongodb://localhost:27017`

**Import Errors:**
- Ensure virtual environment is activated
- Reinstall: `pip install -r requirements.txt`

### Frontend Issues

**Port 3000 already in use:**
- React will ask to use a different port automatically
- Or set: `PORT=3001 npm start`

**Camera Not Working:**
- Ensure you're on HTTPS or localhost (required)
- Grant camera permissions in browser
- Check browser console for errors

**Backend Connection Error:**
- Verify backend is running on port 8000
- Check browser console for CORS or connection errors
- Verify REACT_APP_BACKEND_URL in frontend/.env

## 📝 Environment Variables

### Backend (.env in backend/ directory)
```env
MONGO_URL=mongodb://localhost:27017
DB_NAME=irisvault
CORS_ORIGINS=http://localhost:3000
BIOMETRIC_KEY=your-secret-biometric-encryption-key
```

### Frontend (.env in frontend/ directory)
```env
REACT_APP_BACKEND_URL=http://localhost:8000
```

**Note:** These are optional - the application uses sensible defaults if not provided.

## 🎯 Testing the Application

1. **Enrollment Flow:**
   - Go to landing page → "Enroll Now"
   - Enter personal details
   - Capture 5 iris frames
   - Verify enrollment success

2. **Authentication Flow:**
   - Go to landing page → "ATM Login"
   - Enter account number
   - Capture 3 iris frames
   - Verify authentication success

3. **Transactions:**
   - After login, use Dashboard
   - Withdraw/Deposit funds
   - Check transaction history

4. **Admin Portal:**
   - View enrolled users
   - Check audit logs
   - View biometric metadata

## ✅ Verification Checklist

- [ ] Backend server running on port 8000
- [ ] Frontend server running on port 3000
- [ ] MongoDB running and accessible
- [ ] Camera permissions granted
- [ ] Can access http://localhost:3000
- [ ] Can access http://localhost:8000/docs (API docs)

## 🚀 Production Deployment

For production deployment, see the README.md file for detailed instructions on:
- Building frontend for production
- Using production ASGI server
- Security best practices
- Environment configuration

---

**Need Help?** Check the main README.md for detailed documentation and troubleshooting.

