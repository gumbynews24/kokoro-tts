FROM docker.n8n.io/n8nio/n8n

# Switch to root to install packages
USER root

# Install KOKORO-TTS (Text to Speech)
RUN git clone https://github.com/gumbynews24/kokoro-tts.git && \
cd kokoro-tts && \
pip install -r requirements.txt && \
wget https://github.com/nazdridoy/kokoro-tts/releases/download/v1.0.0/voices-v1.0.bin && \
wget https://github.com/nazdridoy/kokoro-tts/releases/download/v1.0.0/kokoro-v1.0.onnx && \
