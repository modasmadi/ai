// إعدادات Firebase
// سيتم ملء هذه القيم من Firebase Console

import { initializeApp } from 'firebase/app';
import { getAuth } from 'firebase/auth';
import { getFirestore } from 'firebase/firestore';

// Firebase Configuration - تم الحصول عليها من Firebase Console
const firebaseConfig = {
    apiKey: "AIzaSyAR6mf_WvBCzTBoB0CdJdygBhhBTehc4Lc",
    authDomain: "ai-study-helper-297a1.firebaseapp.com",
    projectId: "ai-study-helper-297a1",
    storageBucket: "ai-study-helper-297a1.firebasestorage.app",
    messagingSenderId: "444314456930",
    appId: "1:444314456930:web:2719f1808b7f5c118bd23b"
};

// تهيئة Firebase
const app = initializeApp(firebaseConfig);

// الخدمات
export const auth = getAuth(app);
export const db = getFirestore(app);

export default app;
