# API Documentation: Content and User Management System

[← Voltar para a Página Principal](../../../index.md)

This API documentation provides a detailed overview of the available endpoints, request formats, responses, and error handling for the Content and User Management System. The system includes user management (registration, login, profile editing), content management (documents, topics), and subscription management functionalities.

## Base URL

The base URL for all API requests is:

```
https://api.example.com
```

## Authentication

All requests that require authentication must include a **Bearer token** in the Authorization header. The token is obtained after a successful login.

Example header:

```plaintext
Authorization: Bearer <your-jwt-token>
```

## Endpoints

### 1. **User Management**

#### 1.1 User Registration

- **URL:** `/api/register`
- **Method:** `POST`
- **Description:** Registers a new user (doctor or administrator).
- **Request Body:**
  ```json
  {
    "name": "John Doe",
    "email": "john.doe@example.com",
    "password": "password123",
    "role": "doctor"
  }
  ```
- **Response:**
  - **200 OK**: User registered successfully.
    ```json
    {
      "message": "User registered successfully",
      "user": {
        "_id": "60c72b2f9b1d8f7f1e9e4f72",
        "name": "John Doe",
        "email": "john.doe@example.com",
        "role": "doctor"
      }
    }
    ```
  - **400 Bad Request**: Missing or invalid fields.
    ```json
    {
      "error": "Invalid input data"
    }
    ```

#### 1.2 User Login

- **URL:** `/api/login`
- **Method:** `POST`
- **Description:** Logs in a user (doctor or administrator) and returns a JWT token.
- **Request Body:**
  ```json
  {
    "email": "john.doe@example.com",
    "password": "password123"
  }
  ```
- **Response:**
  - **200 OK**: Login successful and JWT token returned.
    ```json
    {
      "message": "Login successful",
      "token": "your-jwt-token"
    }
    ```
  - **401 Unauthorized**: Incorrect credentials.
    ```json
    {
      "error": "Invalid credentials"
    }
    ```

#### 1.3 Get User List (Admin only)

- **URL:** `/api/users`
- **Method:** `GET`
- **Description:** Lists all users (only accessible to admins).
- **Response:**
  - **200 OK**: List of users.
    ```json
    [
      {
        "_id": "60c72b2f9b1d8f7f1e9e4f72",
        "name": "John Doe",
        "email": "john.doe@example.com",
        "role": "doctor"
      },
      {
        "_id": "60c72b2f9b1d8f7f1e9e4f73",
        "name": "Jane Smith",
        "email": "jane.smith@example.com",
        "role": "administrator"
      }
    ]
    ```

#### 1.4 Edit User Profile

- **URL:** `/api/users/{id}`
- **Method:** `PUT`
- **Description:** Edits a user profile (doctor or administrator).
- **Request Body:**
  ```json
  {
    "name": "John Doe Updated",
    "email": "john.doe.updated@example.com"
  }
  ```
- **Response:**
  - **200 OK**: User updated successfully.
    ```json
    {
      "message": "User updated successfully",
      "user": {
        "_id": "60c72b2f9b1d8f7f1e9e4f72",
        "name": "John Doe Updated",
        "email": "john.doe.updated@example.com",
        "role": "doctor"
      }
    }
    ```
  - **400 Bad Request**: Invalid data provided.
    ```json
    {
      "error": "Invalid input data"
    }
    ```

#### 1.5 Delete User

- **URL:** `/api/users/{id}`
- **Method:** `DELETE`
- **Description:** Deletes a user (doctor or administrator).
- **Response:**
  - **200 OK**: User deleted successfully.
    ```json
    {
      "message": "User deleted successfully"
    }
    ```
  - **404 Not Found**: User not found.
    ```json
    {
      "error": "User not found"
    }
    ```

### 2. **Content Management**

#### 2.1 Create Document

- **URL:** `/api/documents`
- **Method:** `POST`
- **Description:** Creates a new document.
- **Request Body:**
  ```json
  {
    "title": "Medical Guidelines for COVID-19",
    "content": "Detailed content about COVID-19 prevention.",
    "topics": ["60c72b2f9b1d8f7f1e9e4f75"]
  }
  ```
- **Response:**
  - **201 Created**: Document created successfully.
    ```json
    {
      "message": "Document created successfully",
      "document": {
        "_id": "60c72b2f9b1d8f7f1e9e4f76",
        "title": "Medical Guidelines for COVID-19",
        "content": "Detailed content about COVID-19 prevention.",
        "topics": ["60c72b2f9b1d8f7f1e9e4f75"]
      }
    }
    ```
  - **400 Bad Request**: Missing or invalid fields.
    ```json
    {
      "error": "Invalid input data"
    }
    ```

#### 2.2 Get Documents List

- **URL:** `/api/documents`
- **Method:** `GET`
- **Description:** Lists all documents.
- **Response:**
  - **200 OK**: List of documents.
    ```json
    [
      {
        "_id": "60c72b2f9b1d8f7f1e9e4f76",
        "title": "Medical Guidelines for COVID-19",
        "content": "Detailed content about COVID-19 prevention.",
        "topics": ["60c72b2f9b1d8f7f1e9e4f75"]
      }
    ]
    ```

#### 2.3 Edit Document

- **URL:** `/api/documents/{id}`
- **Method:** `PUT`
- **Description:** Edits an existing document.
- **Request Body:**
  ```json
  {
    "title": "Updated Medical Guidelines for COVID-19",
    "content": "Updated content about COVID-19 prevention."
  }
  ```
- **Response:**
  - **200 OK**: Document updated successfully.
    ```json
    {
      "message": "Document updated successfully",
      "document": {
        "_id": "60c72b2f9b1d8f7f1e9e4f76",
        "title": "Updated Medical Guidelines for COVID-19",
        "content": "Updated content about COVID-19 prevention."
      }
    }
    ```
  - **400 Bad Request**: Invalid data provided.
    ```json
    {
      "error": "Invalid input data"
    }
    ```

#### 2.4 Delete Document

- **URL:** `/api/documents/{id}`
- **Method:** `DELETE`
- **Description:** Deletes an existing document.
- **Response:**
  - **200 OK**: Document deleted successfully.
    ```json
    {
      "message": "Document deleted successfully"
    }
    ```
  - **404 Not Found**: Document not found.
    ```json
    {
      "error": "Document not found"
    }
    ```

### 3. **Subscription Management**

#### 3.1 Manage Subscription (Doctor only)

- **URL:** `/api/finance/subscription`
- **Method:** `GET`
- **Description:** Allows doctors to access their subscription details and manage payments.
- **Response:**
  - **200 OK**: Subscription details returned.
    ```json
    {
      "subscription": {
        "status": "active",
        "nextPaymentDue": "2022-12-01",
        "amountDue": 100.00
      }
    }
    ```
  - **401 Unauthorized**: Only doctors can access this endpoint.
    ```json
    {
      "error": "Unauthorized access"
    }
    ```

## Error Codes

- **400 Bad Request**: The request could not be understood or was missing required parameters.
- **401 Unauthorized**: Authentication required or failed.
- **404 Not Found**: The requested resource could not be found.
- **500 Internal Server Error**: An error occurred on the server.


# Revision History

| Date       | Version | Changes                           | Authors |
| ---------- | ------- | --------------------------------- | ------- |
| 02/04/2024 | 0.1     | Document creation                 |         |
| 06/04/2024 | 0.2     | Topics 1.1, 1.2, 1.3, and 3       |         |
| 16/04/2024 | 0.3     | Documentation on Git Pages        |         |
| 09/09/2024 | 0.4     | Updated technologies and app type |         |
| 09/09/2024 | 0.5     | Technology adjustments            |         |

[← Voltar para a Página Principal](../../../index.md)
