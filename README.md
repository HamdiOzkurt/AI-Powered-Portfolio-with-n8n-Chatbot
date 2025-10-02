# AI-Powered Portfolio with n8n Chatbot

## Abstract

This project is a personal portfolio website designed to showcase my skills, projects, and professional experience. It features a modern, responsive design built with Tailwind CSS and includes an integrated AI-powered digital assistant. 

The core of this project is the chatbot, which is powered by **n8n.io** and runs on a **Retrieval-Augmented Generation (RAG)** architecture. This allows the chatbot to provide accurate and context-aware answers by retrieving information directly from my personal and professional documents (such as my resume, project descriptions, and articles). The entire process, from data ingestion to answering queries, is fully automated using n8n workflows, creating a powerful, self-updating, and localized knowledge base.

## 📖 About The Project

This project is an AI-powered personal portfolio website designed to serve as a comprehensive showcase of my technical abilities and professional journey. It features a clean, modern interface built with Tailwind CSS for a fully responsive experience.

The core innovation of this portfolio is its integrated digital assistant—an AI chatbot powered by n8n.io. This chatbot leverages a sophisticated Retrieval-Augmented Generation (RAG) model to provide visitors with accurate, context-aware answers based on my personal and professional data. Instead of generic responses, it queries a localized knowledge base built from my resume, project documentation, and other relevant materials, offering a truly interactive and personalized way to learn about my work.

## ✨ Features

-   **Modern Design:** A sleek and responsive interface built with Tailwind CSS.
-   **Dynamic Animations:** Engaging CSS animations to enhance the user experience.
-   **AI Chatbot:** An n8n-powered digital assistant that answers visitor questions.
-   **Project Showcase:** A detailed presentation of my academic and professional work.

## 🛠️ Technologies Used

-   **Frontend:** HTML, Tailwind CSS, JavaScript
-   **Backend (Chatbot):** n8n.io
-   **Local Server:** Python (`http.server`)

## 🚀 Setup and Installation

To run this project on your local machine, follow these steps:

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/HamdiOzkurt/AI-Powered-Portfolio-with-n8n-Chatbot.git
    cd n8n_web_sitesi
    ```

2.  **Create Assets Folder and Add Images:**
    For the project to display correctly, you need to create an `assets` folder in the root directory, and an `images` subfolder inside it (`assets/images`). Place the following files inside the `assets/images` directory:
    -   `n8n-data-ingestion-workflow.png`
    -   `n8n-rag-agent-workflow.png`

3.  **Start the Local Server:**
    While in the project directory, run the following command:
    ```bash
    python server.py
    ```

4.  **View the Website:**
    Open your browser and navigate to `http://localhost:8000/web.html`.
    *(Note: The server looks for `index.html` by default. Since the main file is `web.html`, you need to specify it in the URL.)*

## 🤖 n8n Chatbot Integration & RAG Architecture

The website features a sophisticated AI chatbot that operates on a RAG (Retrieval-Augmented Generation) model, fully automated with n8n.

The primary goal is to create a digital assistant that answers questions using a localized and personal knowledge base, rather than relying on generic LLM knowledge. Here’s how it works:

1.  **Data Ingestion (Automated via n8n):** I can send my documents (like my CV, project details, or articles) to a Telegram bot. An n8n workflow automatically picks up these files, extracts the text content, splits it into manageable chunks, and converts them into vector embeddings.
2.  **Vector Store:** These embeddings are stored in a local vector database, creating a searchable knowledge base of my personal data.
3.  **Answering Queries:** When a visitor asks a question through the chatbot, the query is converted into a vector. The system performs a semantic search on the vector store to find the most relevant information chunks. 
4.  **Response Generation:** The retrieved information is then passed to a Large Language Model (LLM) along with the original question. The LLM uses this context to generate a precise and relevant answer.

This automated RAG pipeline ensures that the chatbot's knowledge is always up-to-date with my latest information and can provide accurate answers based solely on the data I have provided.

### n8n Workflows

**Data Ingestion Workflow (Telegram → Vector Store):** This workflow automates the process of updating the knowledge base. It listens for new files on Telegram, processes them, and adds them to the vector store.

**AI Agent Workflow (Chat → RAG → Response):** This workflow powers the chatbot itself. It receives a user's question, queries the vector store for relevant context, and uses an LLM to generate the final answer.

*Note: You can find the visual diagrams for both n8n workflows (`n8n-data-ingestion-workflow.png` and `n8n-rag-agent-workflow.png`) inside the `assets/images` folder in this repository.*
