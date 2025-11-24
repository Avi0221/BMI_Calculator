# 📱 **BMI Calculator App – Flutter**

A beautifully designed and fully functional **BMI (Body Mass Index) Calculator App** built using **Flutter** and **GetX** state management.
The app calculates BMI based on height, weight, age, and gender, and provides health insights with categorized BMI results.

---

## 🚀 **Features**

### 🧮 **BMI Calculation**

* Calculates BMI instantly
* Displays BMI value with precision
* Shows health category (Normal, Underweight, Overweight, Obese, etc.)
* Auto-updates UI using **GetX (Obx)**

### 🎨 **Modern UI / UX**

* Clean modern interface
* Animated circular BMI meter
* Light & Dark mode toggle
* Smooth interactions and buttons

### 🌡️ **Dynamic Feedback**

* Color-coded BMI result
* Status message (Normal, Overweight, etc.)
* BMI indicator circle with animation
* Health advice section

### ⚙️ **GetX State Management**

* Reactive controllers
* Centralized BMI calculation logic
* Theme switching with ThemeController

---

## 📸 **Screenshots**

<p align="center">
  <img src="/assets/screens/HomePage(Light).png" width="200"/>
  <img src="/assets/screens/ResultPage(Light).png" width="200"/>
  <img src="/assets/screens/HomePage(dark).png" width="200"/>
  <img src="/assets/screens/ResultPage(dark).png" width="200"/>
</p>

---

## 📁 Folder Structure

```
lib/
 ├── Component/
 │   ├── AgeSelector.dart
 │   ├── HeightSelector.dart
 │   ├── WeightSelector.dart
 │   ├── PrimaryButton.dart
 │   ├── SecondaryButton.dart
 │   ├── ThemeChangeBtn.dart
 │
 ├── controller/
 │   ├── BMIController.dart
 │   ├── ThemeController.dart
 │
 ├── pages/
 │   ├── HomePage.dart
 │   ├── ResultPage.dart
 │
 ├── main.dart
```

---

## 📦 **Dependencies**

The app uses the following Flutter packages:

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.5
  percent_indicator: ^4.2.2
```

---

## 🧠 **How It Works**

### 1️⃣ User selects:

* Gender
* Height
* Weight
* Age

### 2️⃣ On clicking **Let's Calculate**:

* BMI is calculated using:

```
BMI = weight / (height * height)
```

### 3️⃣ Result Page shows:

* Animated BMI circle
* BMI value
* BMI category
* Health recommendation
* Color-coded status

---

## 🔧 **Setup & Run Locally**

Clone the repository:

```bash
git clone https://github.com/Avi0221/BMI_Calculator.git
```

Navigate into project:

```bash
cd bmi_calculator
```

Install dependencies:

```bash
flutter pub get
```

Run app:

```bash
flutter run
```

---

## 📱 **Supported Platforms**

* Android
* iOS


---

## 🛠️ Tech Used

* **Flutter** (Dart)
* **GetX** for state management & navigation
* **Material Design 3**
* **Responsive UI Widgets**

---

## 🤝 Contributing

Pull requests are welcome!
If you want to improve UI, add features, or fix bugs, feel free to contribute.

---

## 📄 License

This project is open-source under the **MIT License**.

---


