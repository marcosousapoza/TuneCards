# TuneCards

## Overview
This application helps musicians study music effectively using flashcards. Features include:
- PDF/SVG cropping for musical phrases
- Audio recording
- Flashcard suggestion algorithm

test

## Milestones
### **Phase 1: Project Setup**
- [ ] Set up project structure and directories.
- [ ] Create a basic `main.py` file with a Kivy app skeleton.
- [ ] Implement navigation between UI screens (Main, Flashcard Review, Flashcard Creation, Settings).
- [ ] Integrate a local database (SQLite or TinyDB) for flashcard storage.

### **Phase 2: PDF/SVG Cropping**
- [ ] Add functionality for loading PDF files.
- [ ] Implement cropping tools for segmenting musical phrases.
- [ ] Store metadata of cropped segments in the database.
- [ ] Add support for SVG manipulation (optional, if required for vector-based scores).

### **Phase 3: Flashcard Management**
- [ ] Create flashcard creation UI for associating cropped segments with data (e.g., title, difficulty).
- [ ] Implement flashcard review functionality with spaced repetition.
- [ ] Develop a suggestion algorithm (e.g., SM2 or a custom scoring system).
- [ ] Allow users to edit and delete flashcards.

### **Phase 4: Audio Recording**
- [ ] Add functionality to record audio and save as `.wav` files.
- [ ] Integrate audio playback for reviewing recordings.
- [ ] Link recorded audio files to corresponding flashcards.

### **Phase 5: Finalization**
- [ ] Refine UI for usability and consistency (similar to Anki).
- [ ] Add basic error handling and validations (e.g., file formats, invalid inputs).
- [ ] Ensure cross-platform compatibility (Linux and Windows).
- [ ] Write clear documentation for open-source contributors.
- [ ] Perform thorough testing on all features.

### **Future Enhancements (Optional)**
- [ ] Add tablet support (touch-friendly UI).
- [ ] Implement import/export functionality for music decks.
- [ ] Explore advanced suggestion algorithms with ML-based approaches.
- [ ] Add support for annotations (e.g., highlighting, notes) on cropped music phrases.

## Getting Started
1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Run the app:
   ```bash
   python main.py
   ```

## Project Structure
- `components/`: Core features like PDF editing and audio recording.
- `db/`: Database management.
- `static/`: Images and styles.
- `ui/`: UI screens.
- `utils/`: Utility functions.
