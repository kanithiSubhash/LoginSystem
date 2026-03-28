<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login | SNS Infotech</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(135deg, #1a1a2e, #16213e, #0f3460);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .card {
      background: white;
      padding: 40px;
      border-radius: 16px;
      width: 380px;
      box-shadow: 0 20px 60px rgba(0,0,0,0.4);
    }
    .logo { text-align: center; margin-bottom: 8px; }
    .logo h1 { color: #0f3460; font-size: 22px; }
    .logo p { color: #888; font-size: 13px; margin-bottom: 28px; }
    label { display: block; font-size: 13px; color: #555; margin-bottom: 5px; }
    input[type="text"], input[type="password"], input[type="email"] {
      width: 100%; padding: 11px 14px;
      border: 1.5px solid #ddd; border-radius: 8px;
      font-size: 14px; margin-bottom: 18px;
      transition: border-color 0.2s;
    }
    input:focus { outline: none; border-color: #0f3460; }
    .password-wrap { position: relative; }
    .password-wrap input { margin-bottom: 0; padding-right: 44px; }
    .toggle-btn {
      position: absolute; right: 12px; top: 11px;
      background: none; border: none; cursor: pointer;
      font-size: 16px; color: #888;
    }
    .pw-field-wrap { margin-bottom: 18px; }
    button[type="submit"] {
      width: 100%; padding: 12px;
      background: #0f3460; color: white;
      border: none; border-radius: 8px;
      font-size: 15px; cursor: pointer;
      transition: background 0.2s;
    }
    button[type="submit"]:hover { background: #e94560; }
    .error { color: #e94560; font-size: 13px; margin-top: 10px; text-align: center; }
  </style>
</head>
<body>
  <div class="card">
    <div class="logo">
      <h1> SNS Infotech</h1>
      <p>Innovations Pvt Ltd — Internship Portal</p>
    </div>
    <form action="LoginServlet" method="post">
      <label for="userId">Email / User ID</label>
      <input type="text" id="userId" name="userId" placeholder="Enter your email" required>

      <label for="password">Password</label>
      <div class="pw-field-wrap">
        <div class="password-wrap">
          <input type="password" id="password" name="password" placeholder="Enter your password" required>
          <button type="button" class="toggle-btn" onclick="togglePassword()">SHOW</button>
        </div>
      </div>

      <button type="submit">Login</button>

      <!-- Show error from servlet redirect -->
      <% if(request.getParameter("error") != null) { %>
        <p class="error"> Invalid credentials. Please try again.</p>
      <% } %>
    </form>
  </div>
  <script>
    function togglePassword() {
      const p = document.getElementById('password');
      p.type = p.type === 'password' ? 'text' : 'password';
    }
  </script>
</body>
</html>