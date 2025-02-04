# Use Miniconda instead of Anaconda (faster)
FROM continuumio/miniconda3

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies from Conda
RUN conda install --yes --file requirements.txt

# Expose Jupyter Notebook port
EXPOSE 8888

# Run Jupyter Notebook inside Docker
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]

