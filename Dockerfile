# Menggunakan base image Python 3.8
FROM python:3.8

# Menetapkan working directory
WORKDIR /app

# Menyalin requirements.txt ke dalam container
COPY requirements.txt .

# Menginstall dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin seluruh kode aplikasi ke dalam container
COPY . .

# Eksekusi command untuk menjalankan aplikasi
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]