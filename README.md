# IrisVault - Biometric ATM System

A professional, secure biometric authentication system for ATM transactions using iris recognition technology. Built with FastAPI backend and React frontend.

## Features

- 🔐 **Iris Biometric Recognition**: Advanced computer vision-based iris pattern matching
- 🛡️ **Liveness Detection**: Prevents photo and video replay attacks
- 🔒 **AES-256 Encryption**: All biometric templates encrypted at rest
- 💰 **ATM Functionality**: Withdraw, deposit, and check balance
- 📊 **Admin Dashboard**: User management, audit logs, and biometric metadata
- 🎨 **Modern UI**: Beautiful, responsive interface with glass morphism design
- ⚡ **Fallback Authentication**: PIN-based backup authentication system

## Tech Stack

### Backend
- **FastAPI** - Modern, fast web framework
- **MongoDB** (via Motor) - Async database driver
- **OpenCV** - Image processing and iris detection
- **scikit-image** - Feature extraction (LBP, HOG, Gabor filters)
- **PyCryptodome** - AES-256 encryption
- **NumPy & SciPy** - Scientific computing

### Frontend
- **React 19** - Modern UI library
- **Tailwind CSS** - Utility-first CSS framework
- **Radix UI** - Accessible component primitives
- **React Router** - Client-side routing
- **Axios** - HTTP client
- **Sonner** - Toast notifications

## Prerequisites

Before you begin, ensure you have the following installed:

- **Python 3.9+** (Python 3.10+ recommended)
- **Node.js 18+** and **npm** or **yarn**
- **MongoDB** (local installation or MongoDB Atlas connection string)
- **Webcam** (for biometric capture)

## Installation & Setup

### 1. Clone the Repository

```bash
cd IrisVault-main
```

### 2. Backend Setup

#### Navigate to backend directory:
```bash
cd backend
```

#### Create virtual environment (recommended):
```bash
# Windows
python -m venv venv
venv\Scripts\activate

# macOS/Linux
python3 -m venv venv
source venv/bin/activate
```

#### Install dependencies:
```bash
pip install -r requirements.txt
```

#### Create `.env` file:
Create a `.env` file in the `backend` directory with the following variables:

```env
# MongoDB Connection
MONGO_URL=mongodb://localhost:27017
DB_NAME=irisvault

# CORS Origins (comma-separated)
CORS_ORIGINS=http://localhost:3000,http://127.0.0.1:3000

# Biometric Encryption Key (32 bytes recommended)
# Generate a secure key: python -c "import secrets; print(secrets.token_urlsafe(32))"
BIOMETRIC_KEY=your-secret-biometric-encryption-key-change-this-in-production
```

**Note**: The application will use default values if `.env` is not provided, but it's recommended to create one for production use.

#### Start MongoDB:
Make sure MongoDB is running on your system:
```bash
# Windows (if installed as service, it should auto-start)
# Or run: mongod

# macOS (with Homebrew)
brew services start mongodb-community

# Linux
sudo systemctl start mongod
```

### 3. Frontend Setup

#### Navigate to frontend directory:
```bash
cd ../frontend
```

#### Install dependencies:
```bash
# Using npm
npm install

# OR using yarn
yarn install
```

#### Create `.env` file (optional):
Create a `.env` file in the `frontend` directory:

```env
REACT_APP_BACKEND_URL=http://localhost:8000
```

**Note**: Default is `http://localhost:8000` if not specified.

## Running the Application

### Start Backend Server

```bash
# From backend directory
cd backend

# Activate virtual environment (if using one)
# Windows: venv\Scripts\activate
# macOS/Linux: source venv/bin/activate

# Start the server
uvicorn server:app --reload --host 0.0.0.0 --port 8000
```

The backend API will be available at: `http://localhost:8000`

API documentation (Swagger UI): `http://localhost:8000/docs`

### Start Frontend Development Server

```bash
# From frontend directory
cd frontend

# Start development server
npm start
# OR
yarn start
```

The frontend will be available at: `http://localhost:3000`

## Usage Guide

### 1. Enrollment (New User Registration)

1. Navigate to the landing page
2. Click **"Enroll Now"**
3. Fill in your personal information:
   - Full Name
   - Account Number
   - Email Address
   - Accept biometric consent
4. Click **"Continue to Biometric Capture"**
5. Position your eyes in the circular guide on the screen
6. Click **"Start Capture"** to automatically capture 5 frames
7. Wait for enrollment to complete
8. You'll see your enrollment confirmation with quality score

### 2. ATM Login

1. Click **"ATM Login"** from the landing page
2. Enter your account number
3. Click **"Start Iris Verification"**
4. Position your eyes in the guide circle
5. Click **"Start Capture"** to capture 3 frames
6. Upon successful verification, you'll be redirected to the dashboard

### 3. Dashboard Operations

After successful login, you can:
- **View Balance**: See your current account balance
- **Withdraw**: Enter amount to withdraw (must not exceed balance)
- **Deposit**: Add money to your account
- **Check Balance**: View balance via toast notification
- **View Transaction History**: See recent transactions

### 4. Fallback Authentication

If iris verification fails twice:
1. The system will automatically switch to fallback authentication
2. Enter your 6-digit PIN
3. **Demo Mode**: The PIN for demo accounts is displayed on screen
   - In production, this would be sent via SMS/Email

### 5. Admin Dashboard

1. Click **"Admin Portal"** from the landing page
2. View:
   - **Enrolled Users**: All registered users with account details
   - **Audit Logs**: System events, verification attempts, and transactions
   - **Biometric Templates**: Metadata about stored templates (encrypted templates are never displayed)

## Project Structure

```
IrisVault-main/
├── backend/
│   ├── server.py              # FastAPI application and API routes
│   ├── biometric_engine.py    # Iris recognition and encryption logic
│   ├── requirements.txt       # Python dependencies
│   └── .env                   # Environment variables (create this)
│
├── frontend/
│   ├── src/
│   │   ├── pages/
│   │   │   ├── LandingPage.js      # Home page
│   │   │   ├── EnrollmentPage.js   # User registration
│   │   │   ├── ATMPage.js          # ATM login
│   │   │   ├── DashboardPage.js    # User dashboard
│   │   │   └── AdminPage.js        # Admin panel
│   │   ├── components/
│   │   │   ├── WebcamCapture.js    # Webcam component
│   │   │   └── ui/                 # Reusable UI components
│   │   ├── App.js                  # Main app component
│   │   └── index.js                # Entry point
│   ├── package.json           # Node dependencies
│   └── .env                   # Frontend env vars (optional)
│
└── README.md                  # This file
```

## API Endpoints

### Authentication
- `POST /api/enroll` - Enroll new user with biometrics
- `POST /api/verify` - Verify user identity via iris scan
- `POST /api/fallback/verify` - Fallback PIN verification

### Account Management
- `GET /api/account/{account_number}/balance` - Get account balance
- `POST /api/transaction` - Create transaction (withdraw/deposit/check)
- `GET /api/transactions/{account_number}` - Get transaction history

### Admin
- `GET /api/admin/users` - Get all enrolled users
- `GET /api/admin/audit-logs` - Get audit logs
- `GET /api/admin/biometrics` - Get biometric metadata

### Testing
- `GET /api/generate-synthetic-iris` - Generate synthetic iris for testing

## Security Features

1. **Biometric Template Encryption**: All iris templates are encrypted with AES-256-CBC
2. **Liveness Detection**: Quality variance checks prevent photo/video attacks
3. **Audit Logging**: All authentication events are logged
4. **No Raw Image Storage**: Only encrypted templates are stored, never raw images
5. **Template Irreversibility**: Encrypted templates cannot be reconstructed to original images

## Troubleshooting

### Backend Issues

**MongoDB Connection Error:**
- Ensure MongoDB is running: `mongod` or check service status
- Verify `MONGO_URL` in `.env` is correct
- Check MongoDB logs for errors

**Import Errors:**
- Ensure virtual environment is activated
- Reinstall requirements: `pip install -r requirements.txt`
- Check Python version: `python --version` (should be 3.9+)

**Port Already in Use:**
- Change port: `uvicorn server:app --port 8001`
- Or stop the process using port 8000

### Frontend Issues

**Camera Not Working:**
- Ensure HTTPS or localhost (required for getUserMedia)
- Grant camera permissions in browser
- Check browser console for errors

**Backend Connection Error:**
- Verify backend is running on `http://localhost:8000`
- Check `REACT_APP_BACKEND_URL` in `.env`
- Check browser console for CORS errors

**Dependencies Installation Error:**
- Delete `node_modules` and `package-lock.json`
- Run `npm install` again
- Or try `yarn install`

### General Issues

**Enrollment/Verification Failing:**
- Ensure good lighting
- Look directly at camera
- Position eyes in the circular guide
- Avoid backlighting or shadows
- Try synthetic iris generator for testing: `/api/generate-synthetic-iris`

## Development

### Running Tests

```bash
# Backend tests
cd backend
pytest backend_test.py

# Frontend tests (if configured)
cd frontend
npm test
```

### Building for Production

**Frontend:**
```bash
cd frontend
npm run build
# Output will be in build/ directory
```

**Backend:**
```bash
# Use production ASGI server
uvicorn server:app --host 0.0.0.0 --port 8000 --workers 4
```

## Production Deployment Notes

1. **Change all default keys and passwords**
2. **Use strong MongoDB connection strings**
3. **Enable HTTPS for both frontend and backend**
4. **Configure proper CORS origins**
5. **Set up MongoDB authentication**
6. **Use environment variables for all secrets**
7. **Enable rate limiting for API endpoints**
8. **Set up proper logging and monitoring**
9. **Use a production ASGI server (Gunicorn + Uvicorn)**
10. **Configure reverse proxy (Nginx)**

## License

This project is provided as-is for educational and demonstration purposes.

## Support

For issues or questions, please check:
1. This README
2. Backend API docs: `http://localhost:8000/docs`
3. Browser console for frontend errors
4. Server logs for backend errors

---

**Built with ❤️ using FastAPI, React, and Computer Vision**
