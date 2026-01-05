# خطوات تشغيل التطبيق 🚀

## المتطلبات الأساسية

قبل البدء، تأكد من تثبيت:
1. **Node.js** (الإصدار 16 أو أحدث)
2. **npm** أو **yarn**
3. **Git** (اختياري)

---

## 1. تثبيت Node.js و npm

### Windows:
1. قم بزيارة [nodejs.org](https://nodejs.org/)
2. حمّل النسخة LTS (الموصى بها)
3. قم بتثبيته (سيتم تثبيت npm تلقائياً)
4. تحقق من التثبيت:
```bash
node -v
npm -v
```

---

## 2. تثبيت المكتبات المطلوبة

افتح Terminal/PowerShell وانتقل لمجلد المشروع:

```bash
cd C:\Users\M\Desktop\ai-study-helper
```

ثم قم بتثبيت المكتبات:

```bash
npm install
```

---

## 3. إعداد Firebase

### خطوات إنشاء مشروع Firebase:

1. **انتقل إلى Firebase Console:**
   - [https://console.firebase.google.com/](https://console.firebase.google.com/)

2. **أنشئ مشروع جديد:**
   - اضغط "Add project"
   - أدخل اسم المشروع مثل: "AI Study Helper"
   - اتبع الخطوات

3. **أضف تطبيق ويب:**
   - من لوحة المشروع، اضغط على أيقونة الويب `</>`
   - سجل التطبيق
   - انسخ `firebaseConfig`

4. **فعّل Authentication:**
   - من القائمة الجانبية → Build → Authentication
   - اضغط "Get started"
   - فعّل "Email/Password"

5. **أنشئ Firestore Database:**
   - من القائمة الجانبية → Build → Firestore Database
   - اضغط "Create database"
   - اختر "Start in test mode" (للتطوير)
   - اختر الموقع الأقرب لك

6. **انسخ إعدادات Firebase:**
   - من Project Settings → General
   - انسخ القيم من `firebaseConfig`
   - الصقها في ملف `firebase.config.js`

### مثال على firebase.config.js:

```javascript
const firebaseConfig = {
  apiKey: "AIzaSyXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
  authDomain: "ai-study-helper.firebaseapp.com",
  projectId: "ai-study-helper",
  storageBucket: "ai-study-helper.appspot.com",
  messagingSenderId: "123456789012",
  appId: "1:123456789012:web:abcdef123456"
};
```

---

## 4. إعداد Gemini API

1. **احصل على API Key:**
   - انتقل إلى [Google AI Studio](https://makersuite.google.com/app/apikey)
   - سجل الدخول بحساب Google
   - اضغط "Create API Key"
   - انسخ المفتاح

2. **أضف API Key للكود:**
   - افتح ملف `src/services/aiService.js`
   - ابحث عن `const GEMINI_API_KEY = 'YOUR_GEMINI_API_KEY';`
   - استبدل `YOUR_GEMINI_API_KEY` بمفتاحك الحقيقي

---

## 5. تثبيت Expo CLI

```bash
npm install -g expo-cli
```

أو استخدم npx مباشرة:

```bash
npx expo start
```

---

## 6. تشغيل التطبيق

### الطريقة 1: على الجهاز الفعلي (موصى بها)

1. **ثبت تطبيق Expo Go:**
   - من Google Play Store: [Expo Go](https://play.google.com/store/apps/details?id=host.exp.exponent)

2. **شغل التطبيق:**
```bash
npx expo start
```

3. **امسح QR Code:**
   - افتح Expo Go على هاتفك
   - امسح الـ QR Code الظاهر في Terminal

### الطريقة 2: على محاكي Android

1. **ثبت Android Studio:**
   - [تحميل Android Studio](https://developer.android.com/studio)

2. **أنشئ محاكي Android:**
   - من Android Studio → Device Manager
   - أنشئ جهاز افتراضي

3. **شغل المحاكي ثم التطبيق:**
```bash
npx expo start --android
```

---

## 7. حل المشاكل الشائعة

### مشكلة: `command not found: npm`
**الحل:** لم يتم تثبيت Node.js. ارجع للخطوة 1.

### مشكلة: `Firebase configuration error`
**الحل:** تأكد من نسخ إعدادات Firebase بشكل صحيح في `firebase.config.js`.

### مشكلة: `Gemini API error`
**الحل:** تأكد من صحة API Key في ملف `aiService.js`.

### مشكلة: التطبيق بطيء جداً
**الحل:** 
- تأكد من اتصال إنترنت جيد
- استخدم جهاز حقيقي بدلاً من المحاكي
- قلل جودة الصور المرفوعة

---

## 8. البناء للإنتاج (APK)

### الطريقة السريعة (Classic Build):

```bash
# بناء APK فقط للتجربة
expo build:android -t apk
```

### الطريقة الحديثة (EAS Build):

```bash
# تثبيت EAS CLI
npm install -g eas-cli

# تسجيل الدخول
eas login

# إعداد المشروع
eas build:configure

# بناء APK
eas build --platform android --profile preview

# بناء AAB للنشر على Google Play
eas build --platform android --profile production
```

---

## 9. نشر على Google Play Store

1. **أنشئ حساب Google Play Developer:**
   - [Google Play Console](https://play.google.com/console)
   - رسوم التسجيل: $25 (لمرة واحدة)

2. **جهز متطلبات النشر:**
   - App Icon (512x512px)
   - Feature Graphic (1024x500px)
   - Screenshots (4-8 صور)
   - وصف التطبيق (عربي + إنجليزي)
   - سياسة الخصوصية

3. **ارفع AAB:**
   - من Play Console → Create app
   - اتبع الخطوات
   - ارفع ملف AAB المبني

---

## 10. التحديثات المستقبلية

### ميزات يجب إضافتها في النسخة 2.0:
- ✅ نظام الدفع (Stripe أو PayPal)
- ✅ استخراج نص من PDF حقيقي
- ✅ سجل كامل للطلبات
- ✅ وضع Dark/Light Mode
- ✅ إشعارات Push
- ✅ مشاركة اجتماعية

---

## الدعم والمساعدة

إذا واجهت أي مشاكل:
1. راجع [Expo Documentation](https://docs.expo.dev/)
2. راجع [Firebase Documentation](https://firebase.google.com/docs)
3. راجع [Gemini API Documentation](https://ai.google.dev/docs)

---

**بالتوفيق! 🚀**
