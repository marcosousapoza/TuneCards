#!/bin/bash

# Define project name
PROJECT_NAME="TuneCards"

# Function to create directories
create_directories() {
    echo "Creating directories..."
    mkdir -p components db static/img static/style ui utils
    echo "Directories created."
}

# Function to create files with placeholder content
create_files() {
    echo "Creating files..."
    
    # Create main.py
    cat <<EOL > main.py
# Entry point for the application

if __name__ == '__main__':
    print('Welcome to ${PROJECT_NAME}!')
EOL

    # Create README.md
    cat <<EOL > README.md
# ${PROJECT_NAME}

## Overview
This application helps musicians study music effectively using flashcards. Features include:
- PDF/SVG cropping for musical phrases
- Audio recording
- Flashcard suggestion algorithm

## Milestones
### **Phase 1: Project Setup**
- [ ] Set up project structure and directories.
- [ ] Create a basic \`main.py\` file with a Kivy app skeleton.
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
- [ ] Add functionality to record audio and save as \`.wav\` files.
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
   \`\`\`bash
   pip install -r requirements.txt
   \`\`\`
2. Run the app:
   \`\`\`bash
   python main.py
   \`\`\`

## Project Structure
- \`components/\`: Core features like PDF editing and audio recording.
- \`db/\`: Database management.
- \`static/\`: Images and styles.
- \`ui/\`: UI screens.
- \`utils/\`: Utility functions.
EOL

    # Create requirements.txt
    cat <<EOL > requirements.txt
kivy
PyPDF2
pyaudio
EOL

    # Create placeholder Python files
    touch components/pdf_editor.py components/svg_editor.py components/audio_recorder.py components/suggestion_algorithm.py
    touch db/database.py
    touch static/style/global.kv
    touch ui/main_screen.py ui/flashcard_screen.py ui/flashcard_creation_screen.py ui/settings_screen.py
    touch utils/file_handler.py utils/svg_utils.py utils/audio_utils.py
    
    echo "Files created."
}

# Function to initialize Git with project name
initialize_git() {
    echo "Initializing Git..."
    git init
    git branch -m main
    git add .
    git commit -m "Initial commit for ${PROJECT_NAME} project"
    echo "Git repository initialized for ${PROJECT_NAME}."
}

# Main script execution
echo "Setting up the ${PROJECT_NAME} project..."
create_directories
create_files
initialize_git
echo "Project setup complete. Happy coding!"
