# Terraform Automation API with Flask

This project is a simple Python API built using Flask that automates Terraform commands. The API allows you to run Terraform scripts to provision infrastructure and automatically destroy the created resources after 5 minutes. CORS is enabled for handling cross-origin requests.

## Features

- **Terraform Init, Plan, Apply**: The API runs Terraform commands to initialize, plan, and apply infrastructure changes.
- **Automatic Resource Destruction**: After 5 minutes of provisioning, the resources are destroyed automatically.
- **API Response**: Returns the URL of a GCP bucket created using Terraform.
- **Flask with CORS**: API supports cross-origin requests using Flask-CORS.

## Requirements

- Python 3.x
- Flask
- Flask-CORS
- Terraform installed and configured
- JSON support in Terraform for outputting the bucket URL

## Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/terraform-flask-api.git
   cd terraform-flask-api

2. **Install required Python packages:**<br>

pip install flask flask-cors

3. **Make sure Terraform is installed:**<br>
 Ensure that Terraform is installed on your machine and added to your system's PATH. You can install Terraform from Terraform's official site.

4. **Terraform scripts:**<br> 
Place your Terraform files in the appropriate directory. Ensure the output is set to return the bucket_url as JSON:

```
output "bucket_url" {
  value = google_storage_bucket.your_bucket.website_endpoint
}
```

## Usage

Run the Flask app:<br>

- python app.py

**After running the flask application you can click on **try now** button on WEB-UI of NoOps, it will trigger the flask API to create GCP Bucket using terraform. After terraform run successfully the flask API will return the Bucket URL to the Web_UI.**
