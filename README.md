# MarkItDown UI

A modern web application that converts various document formats to Markdown. Built with Streamlit for a clean, user-friendly interface.

## Features

- Convert multiple file formats to Markdown:
  - PDF documents
  - Word documents (.docx)
  - PowerPoint presentations (.ppt, .pptx)
  - Jupyter Notebooks (.ipynb)
  - HTML files
  - Text files
  - ZIP archives containing supported files
- Clean and intuitive user interface
- Multi-file upload support
- Improved text formatting and spacing
- Download converted Markdown files

## Installation

### Option 1: Using Docker (Recommended)

1. Install Docker and Docker Compose on your system

2. Clone the repository:
```bash
git clone https://github.com/imehr/markitdown-ui.git
cd markitdown-ui
```

3. Build and run with Docker Compose:
```bash
docker-compose up -d
```

4. Open your web browser and navigate to http://localhost:8502

To stop the container:
```bash
docker-compose down
```

### Option 2: Manual Installation

1. Clone the repository:
```bash
git clone https://github.com/imehr/markitdown-ui.git
cd markitdown-ui
```

2. Create a virtual environment and activate it:
```bash
python -m venv .venv
source .venv/bin/activate  # On Windows, use: .venv\Scripts\activate
```

3. Install the required packages:
```bash
pip install -r requirements.txt
```

## Usage

### Using Docker
The application will be automatically available at http://localhost:8502 after running `docker-compose up -d`

### Manual Run
1. Start the Streamlit app:
```bash
streamlit run app.py
```

2. Open your web browser and navigate to the provided URL (typically http://localhost:8502)

3. Upload your documents and click "Convert to Markdown"

## Dependencies

- Python 3.7+
- Streamlit
- PyPDF2
- python-docx
- python-pptx
- nbconvert
- beautifulsoup4

## Docker Support
The application includes Docker support for easy deployment:
- Multi-stage build for optimized image size
- Volume mounting for persistent data
- Health checks for container monitoring
- Automatic restart on failure
- Environment variable configuration

## Author
- Mehran Mozaffari
