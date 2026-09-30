# Popular Culture Quiz 🎬

A multiple-choice iOS quiz app built on a strict Model-View-Controller separation, extending the classic two-option quiz exercise into a three-option format.

## 📌 Overview

The app presents fifty questions on film, television and music — from *Wednesday* and *Dark* to the Barbenheimer box-office clash — each with three possible answers. Selecting an answer colours the button green or red, advances the question, and updates the score and progress bar. The question set is original rather than taken from a course, and the difficulty leans on recognition rather than obscure trivia.

## 🛠 Technical Architecture & Core Competencies

**Model-View-Controller separation.** `ViewController` holds no questions, no answers and no scoring rules. It owns six outlets and two methods: one that reacts to a tap, one that redraws the screen. Every piece of content it displays arrives through a getter on `QuizBrain` — `getQuestionText()`, `getAnswerButton1Title()`, `getProgress()`, `getScore()`. Replacing the entire question set requires no change to the controller.

**Extending the data model.** The standard version of this exercise stores a single boolean-style answer per question. Here `Question` carries an `alternative: [String]` array alongside the correct answer, so a question defines its own options rather than relying on two fixed buttons. The correct answer is stored as a value and compared against the tapped button's title, which keeps the model independent of button order or index.

**Value semantics.** `Question` and `QuizBrain` are both structs. State that changes — `questionNumber` and `score` — is mutated only through `mutating` functions, so the compiler enforces where mutation may occur instead of leaving it to convention.

**Derived UI state.** Nothing about the interface is stored twice. The progress bar reads `Float(questionNumber + 1) / Float(quiz.count)` and the score label reads `getScore()`; both are computed from the model on every redraw. There is no separate copy of the state that could drift out of sync.

**Deferred redraw.** The answer button stays coloured for a moment before the next question replaces it, using `DispatchQueue.main.asyncAfter`. Without the delay the feedback would be invisible — the screen would update before the colour could register.

### Project Structure

```
PopulerCulture/
├── Controller/   ViewController — outlets, tap handling, redraw
├── Model/        Question (one item), QuizBrain (set, order, score)
└── View/         Main.storyboard
```

## 👨‍💻 Developer Insight

The interesting part of this build was discovering that **generalising the model is only half the job.** Moving from a two-answer question to a list of alternatives made `Question` flexible: a question now describes how many options it has. But the view did not follow. Three outlets and three getters — `getAnswerButton1Title()`, `getAnswerButton2Title()`, `getAnswerButton3Title()` — still hard-code the count at three. A four-option question would compile and store correctly, and then fail to appear.

That asymmetry is easy to miss because everything works. The data layer is ready for something the interface cannot render, and nothing warns you. The fix is not in the model at all: the buttons would need to be generated from the array in a stack view rather than wired individually in the storyboard.

Noticing that the flexibility stopped at the storyboard boundary was more useful than the feature itself.
