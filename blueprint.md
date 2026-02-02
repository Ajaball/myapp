
# Product Blueprint: بوصلة الطالب (Student Compass)

This document provides a complete product specification for the Flutter mobile application “بوصلة الطالب”. It is intended for developers, designers, and project stakeholders to ensure a shared understanding of the app’s vision, features, and technical requirements.

---

## Step 1: App Overview and Vision

### Core Problem
High school graduates in Yemen and the wider Arab region face significant challenges in their transition to higher education. They lack access to centralized, clear, and reliable information for choosing a suitable university major. The admission process is often bureaucratic and confusing, and there is a general lack of guidance on academic and personal preparation for university life. This problem is particularly acute for students in rural areas who are geographically and digitally disconnected from urban university centers.

### Target Audience
*   **Confused High School Graduates (طلاب محتارين):** Students who have completed their secondary education but are uncertain about which academic path to pursue.
*   **Rural Students (طلاب من الأرياف):** Students from outside major cities with limited access to career counseling, university open days, and information resources.
*   **Prospective University Students:** Specifically, those intending to apply to universities in Yemen, with an initial focus on جامعة تعز – فرع التربة (Taiz University, Al-Turbah Branch).

### Strategic Importance
“بوصلة الطالب” is critical in the Yemeni/Arab educational context as it aims to be a digital mentor and a centralized support system. By democratizing access to essential information and simplifying complex procedures, the app empowers students to make informed decisions that align with their skills and aspirations. This reduces the friction and anxiety associated with university admissions, minimizes the risk of academic dropout due to poor major selection, and ultimately contributes to better career outcomes for the youth.

---

## Step 2: Application Structure (Main Tabs)

The application will be organized around a main bottom navigation bar with the following six tabs:

### 1. اختيار التخصص (Major Selection)
*   **الهدف (Purpose):** To guide students toward a suitable university major through a data-driven, psychometric approach.
*   **الوظائف الأساسية (Key Features):**
    *   **Questionnaire System:** A multi-part questionnaire covering logical reasoning (e.g., math, science problems), psychological preferences (e.g., work style, interests, personality traits based on simplified RIASEC model), and academic history.
    *   **Answer Analysis:** An algorithm that processes user answers, weighting them against predefined profiles for each available major.
    *   **Recommendation Engine:** Presents the top 3-5 recommended majors with a percentage match score. Each recommendation links directly to the major’s "Academic Roadmap".
*   **نوع المحتوى (Content Types):** Interactive quizzes (multiple choice, true/false, Likert scales), textual analysis, dynamic results visualization (e.g., radial charts, ranked lists).
*   **تجربة المستخدم المتوقعة (Expected UX):** An engaging, game-like experience that feels like a personal consultation. The user should feel that the recommendations are tailored and insightful, not generic. The process will be broken into small, manageable steps to maintain engagement.

### 2. التسجيل والقبول (Registration & Admission)
*   **الهدف (Purpose):** To streamline the admission process for partner universities, starting with Taiz University (Al-Turbah Branch).
*   **الوظائف الأساسية (Key Features):**
    *   **Simplified In-App Form:** A multi-step form that captures all necessary information for university registration (personal details, academic records, choice of major). The flow will be optimized for mobile with clear instructions and data validation.
    *   **Document Upload:** A secure interface to upload required documents (e.g., high school certificate, ID card) using the phone’s camera or file storage.
    *   **Payment Gateway Integration:** The app will redirect to the university’s official external payment portal to handle admission fees. A clear disclaimer will be shown. The app will later check for payment status via an API if available, or instruct the user on how to confirm.
*   **نوع المحتوى (Content Types):** Forms, instructional text, links, document images (JPEG, PNG, PDF).
*   **تجربة المستخدم المتوقعة (Expected UX):** A clear, linear, and reassuring process. Users should feel confident that their application is being submitted correctly. Progress indicators and success/error messages are crucial. This process must be significantly simpler than the official university website's desktop-oriented experience.

### 3. نماذج اختبارات القبول (Admission Test Models)
*   **الهدف (Purpose):** To provide students with practice materials for university entrance exams, helping them prepare effectively.
*   **الوظائف الأساسية (Key Features):**
    *   **Categorized Library:** A library of past exam papers and practice questions, organized by university and major.
    *   **PDF Viewer:** An integrated, high-performance PDF viewer to display exam models.
    *   **Download for Offline Access:** Functionality to save PDFs locally on the device.
    *   **Admin-Friendly CMS:** The backend should allow an administrator to easily upload new PDF files and categorize them without requiring a new app release.
*   **نوع المحتوى (Content Types):** PDF documents, filterable lists, search results.
*   **تجربة المستخدم المتوقعة (Expected UX):** A straightforward, library-like experience. Users can quickly filter, find, and view or download the materials they need. Fast loading and smooth scrolling within PDFs are essential.

### 4. السكن (Housing)
*   **الهدف (Purpose):** To help students coming from other areas find suitable and safe housing near the university campus.
*   **الوظائف الأساسية (Key Features):**
    *   **Housing Listings:** A browsable list of available student accommodations (apartments, rooms) with filters (price, distance from campus, number of rooms).
    *   **Detailed Views:** Each listing includes photos, amenities, landlord contact information, and a map view.
    *   **Verified Reviews and Ratings:** A system for current or former tenants to leave reviews and ratings (1-5 stars) for listings.
    *   **Find a Roommate (اختيار شريك سكن):** A feature where users can create a simple profile (major, habits, preferences) and browse other users looking for roommates. Includes an in-app, privacy-focused chat to connect.
*   **نوع المحتوى (Content Types):** User-generated listings, images, text reviews, ratings, user profiles, map data.
*   **تجربة المستخدم المتوقعة (Expected UX):** A trustworthy and easy-to-navigate classifieds experience, similar to a modern real estate app but tailored for students. The roommate feature should feel safe and community-oriented.

### 5. خارطة الطريق الأكاديمية (Academic Roadmap)
*   **الهدف (Purpose):** To provide a clear, long-term vision of what each academic major entails, from year one to graduation and beyond.
*   **الوظائف الأساسية (Key Features):**
    *   **Structured Roadmaps:** For each major, a timeline-based view showing:
        *   **Year-by-Year Subjects:** Core subjects for each academic year.
        *   **Essential Skills:** Technical and soft skills to be acquired (e.g., "Programming in Python," "Public Speaking").
        *   **Recommended Courses:** Links to relevant online courses (Coursera, Edraak) to supplement university curriculum.
        *   **Career Pathways:** Potential job titles and career fields post-graduation.
*   **نوع المحتوى (Content Types):** Structured text, timelines, lists, hyperlinks.
*   **تجربة المستخدم المتوقعة (Expected UX):** An inspiring and informative experience. The user should be able to visualize their entire academic journey, which builds motivation and clarifies expectations. The design should be clean and easy to follow.

### 6. استراحة محارب (Warrior's Rest)
*   **الهدف (Purpose):** To provide a space for motivation, humor, and psychological relief, acknowledging the stress of the admission period.
*   **الوظائف الأساسية (Key Features):**
    *   **Success Stories:** Short, written or video-based interviews with graduates from the region who have built successful careers, focusing on their journey and challenges.
    *   **Realistic Motivation:** Content that avoids clichés and offers practical advice for dealing with academic pressure, failure, and uncertainty.
    *   **Light Humor:** A curated feed of relatable, light-hearted memes, comics, or short posts about student life.
*   **نوع المحتوى (Content Types):** Articles, short videos, images (memes), text posts.
*   **تجربة المستخدم المتوقعة (Expected UX):** A relaxed, social-media-feed-like experience. This tab should feel like a 'breather' from the more functional parts of the app, helping to build a positive emotional connection with the user.

---

## Step 3: Technical Specification

### App Features List
*   User Authentication (Phone number + SMS OTP)
*   Psychometric & Logical Questionnaire
*   Major Recommendation Engine
*   University Admission Form Submission
*   Secure Document Uploader
*   External Payment Gateway Integration
*   PDF Library for Exam Models (View & Download)
*   Housing Listing Board with Filters & Search
*   User Reviews & Rating System
*   Roommate Finder with In-App Chat
*   Structured Academic Roadmaps per Major
*   Motivational Content Feed (Articles, Videos, Humor)
*   User Profile Management
*   Light/Dark Mode
*   Arabic/English Localization
*   Smart Push Notifications

### Folder and File Structure (Conceptual)
The project will adopt a **Feature-First Layered Architecture** for scalability and maintainability.

```
/lib
|-- /app
|   |-- app.dart             # MaterialApp, theme, and router config
|   |-- app_bloc_observer.dart
|
|-- /core
|   |-- /api                 # API client (e.g., Dio)
|   |-- /config              # Environment variables, constants
|   |-- /db                  # Database client (e.g., Drift, Sembast)
|   |-- /localization        # L10n setup
|   |-- /theme               # App themes (light/dark)
|   |-- /utils               # Utility functions, extensions
|
|-- /features
|   |-- /auth                # Authentication feature
|   |   |-- /data
|   |   |-- /domain
|   |   |-- /presentation    # (UI: screens, widgets, blocs/providers)
|   |
|   |-- /major_selection     # Questionnaire & Recommendation feature
|   |   |-- /data
|   |   |-- /domain
|   |   |-- /presentation
|   |
|   |-- /admissions          # Registration & Admission feature
|   |   |-- /data
|   |   |-- /domain
|   |   |-- /presentation
|   |
|   |-- /housing             # Housing & Roommate feature
|   |   |-- /data
|   |   |-- /domain
|   |   |-- /presentation
|   |
|   |-- /roadmap             # Academic Roadmaps feature
|   |   |-- /data
|   |   |-- /domain
|   |   |-- /presentation
|
|-- /models                  # Shared data models (e.g., User, Major)
|
|-- main.dart                # Application entry point
```

### Database Design (Entities & Relationships)
A relational or document-based database (like Firestore or a local mobile DB) can be used.

*   **Users:** `user_id` (PK), `phone_number`, `full_name`, `profile_picture_url`, `created_at`.
*   **Majors:** `major_id` (PK), `name_ar`, `name_en`, `description_ar`, `description_en`, `university_id` (FK).
*   **QuestionnaireQuestions:** `question_id` (PK), `text_ar`, `text_en`, `type` (e.g., 'logical', 'psychological'), `category`.
*   **UserAnswers:** `answer_id` (PK), `user_id` (FK), `question_id` (FK), `answer_value`.
*   **AdmissionApplications:** `application_id` (PK), `user_id` (FK), `major_id` (FK), `status` ('pending', 'submitted', 'paid'), `submission_data` (JSON).
*   **ExamModels:** `exam_id` (PK), `major_id` (FK), `title`, `pdf_url`, `year`.
*   **HousingListings:** `listing_id` (PK), `owner_id` (FK to Users), `title`, `description`, `price`, `address`, `images` (List of URLs), `is_available`.
*   **HousingReviews:** `review_id` (PK), `listing_id` (FK), `user_id` (FK), `rating` (1-5), `comment`.
*   **RoommateProfiles:** `profile_id` (PK), `user_id` (FK), `bio`, `preferences` (JSON).
*   **AcademicRoadmaps:** `roadmap_id` (PK), `major_id` (FK), `content` (JSON or structured text).
*   **ContentItems:** `content_id` (PK), `tab` ('warrior_rest'), `type` ('story', 'humor'), `title`, `body`, `video_url`, `image_url`.

### Functional Requirements
*   Users must register with a valid phone number.
*   The questionnaire must save progress if the user exits midway.
*   Admission forms must validate all inputs before submission.
*   PDF files must be downloadable to the device's local storage.
*   The in-app chat for the roommate feature must be real-time.
*   The admin must be able to manage content (Exam Models, Roadmaps, Warrior's Rest) via a separate web-based CMS.

### Non-Functional Requirements
*   **Performance:** App should launch in under 3 seconds. Screen transitions and animations should be smooth (60fps). PDF and image loading must be optimized.
*   **Scalability:** The backend architecture must handle a growing number of users and content, especially during peak admission seasons.
*   **Accessibility (A11Y):** The app must adhere to WCAG 2.1 AA standards, including sufficient color contrast, screen reader support (TalkBack/VoiceOver), and touch target sizes.
*   **Offline Usage:** Downloaded exam models and cached roadmaps should be accessible without an internet connection.
*   **Security:** All user data, especially personal information and documents, must be transmitted over HTTPS and stored securely.

---

## Step 4: Design & Identity Guidelines

### Visual Tone
Modern, clean, and encouraging. The design should feel professional and trustworthy, yet youthful and vibrant. It should inspire confidence and reduce anxiety. Use of custom illustrations and clear iconography is preferred over stock photos.

### Color Palette
*   **Light Mode (نهاري):**
    *   Primary Background: White (`#FFFFFF`) or a very light gray (`#F7F8FA`).
    *   Primary Text: Dark Gray (`#2D3748`).
    *   Accent/Primary Action: A vibrant, optimistic color like a Teal (`#00A79D`) or a bright Blue.
*   **Dark Mode (كحلي ليلي):**
    *   Primary Background: A deep, dark navy blue (`#1A202C`).
    *   Primary Text: Light Gray (`#E2E8F0`).
    *   Accent/Primary Action: The same accent color from the light theme to maintain brand consistency.

### Typography
*   **Primary Font:** **Cairo**. This font is open-source, modern, and highly readable in Arabic for both headings and body text. It also has good multilingual support for English.
*   **Hierarchy:** A clear typographic scale will be established for headings, subheadings, body text, and captions to guide the user's eye and improve legibility.

### Language & Localization
*   **Arabic-First:** The UI will be designed for Right-to-Left (RTL) first. All layouts will be mirrored correctly for the English version.
*   **Full Support:** All text strings must be externalized for easy translation. Both Arabic and English languages will be supported from the initial release.

---

## Step 5: Additional Creative Enhancements

### Gamification & Engagement
*   **Progress Tracking:** Visualize progress for key tasks (e.g., completing the questionnaire, filling the admission form) with progress bars or rings.
*   **Milestone Badges:** Award users with badges for completing major steps: "المستكشف" (The Explorer) for finishing the questionnaire, "الرائد" (The Pioneer) for submitting their first application, "المجتهد" (The Diligent) for studying 5 exam models.
*   **Points System:** Users can earn points for helpful actions like leaving a verified housing review. Points could be used for cosmetic customizations in the future.

### Smart Notifications
*   **Deadline Alerts:** Push notifications for upcoming university admission deadlines.
*   **Content Nudges:** "Have you explored the roadmap for IT? It was one of your top recommendations!"
*   **Community Alerts:** "A new housing option was just listed near your university." or "A new success story was just published in 'Warrior's Rest'."
*   **Weekly Tips:** A weekly notification with a practical tip for academic success or personal development.

### High-Value Features
*   **Mentorship Connection:** A lightweight feature to connect new students with senior students or recent graduates from the same major for advice and guidance.
*   **Community Forums:** Simple, topic-based forums for each major where students can ask questions and share information.
*   **Cost of Living Calculator:** A simple tool for students to estimate their monthly expenses (rent, food, transport) in the university city.

