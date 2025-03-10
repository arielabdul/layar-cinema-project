<?php
session_start();
include 'db.php';

$error = "";

// Cek apakah form login sudah disubmit
if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Pertama, periksa tabel admins
    $sql_admin = "SELECT * FROM admins WHERE username = ?";
    $stmt = $conn->prepare($sql_admin);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result_admin = $stmt->get_result();

    if ($result_admin->num_rows > 0) {
        $admin = $result_admin->fetch_assoc();
        // Verifikasi password (di aplikasi nyata, gunakan hash dan password_verify)
        if ($password == $admin['password']) {
            // Set session untuk admin dan juga user agar index.php mengenali login
            $_SESSION['admin_id'] = $admin['id'];
            $_SESSION['user_id'] = $admin['id']; // Tambahkan baris ini
            $_SESSION['username'] = $admin['username'];
            header("Location: /websiteMovie/admin-home.php");
            exit();
        } else {
            $error = "Username atau password salah!";
        }
    } else {
        // Jika tidak ditemukan di tabel admins, periksa tabel users
        $sql_user = "SELECT * FROM users WHERE username = ?";
        $stmt = $conn->prepare($sql_user);
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result_user = $stmt->get_result();

        if ($result_user->num_rows > 0) {
            $user = $result_user->fetch_assoc();
            if ($password == $user['password']) {
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['username'] = $user['username'];
                header("Location: /websiteMovie/index.php");
                exit();
            } else {
                $error = "Username atau password salah!";
            }
        } else {
            $error = "Username atau password salah!";
        }
    }
}
?>


<!-- (HTML form login tetap sama) -->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login User</title>
  <!-- Sertakan Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap");

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Roboto", sans-serif;
    }

    body {
      background: #000;
      position: relative;
      min-height: 100vh;
    }

    body::before {
      content: "";
      position: absolute;
      left: 0;
      top: 0;
      opacity: 0.5;
      width: 100%;
      height: 100%;
      background: url("img/bg.jpg");
      background-position: center;
      background-size: cover;
      z-index: -1;
    }

    nav {
      position: fixed;
      padding: 25px 60px;
      z-index: 1;
    }

    nav a img {
      width: 167px;
    }

    .form-wrapper {
      position: absolute;
      left: 50%;
      top: 50%;
      border-radius: 4px;
      padding: 70px;
      width: 450px;
      transform: translate(-50%, -50%);
      background: rgba(0, 0, 0, 0.75);
    }

    .form-wrapper h2 {
      color: #fff;
      font-size: 2rem;
      margin-bottom: 20px;
    }

    .form-wrapper form {
      margin: 25px 0 65px;
    }

    form .form-control {
      height: 50px;
      position: relative;
      margin-bottom: 16px;
    }

    .form-control input {
      height: 100%;
      width: 100%;
      background: #333;
      border: none;
      outline: none;
      border-radius: 4px;
      color: #fff;
      font-size: 1rem;
      padding: 0 20px;
    }

    .form-control input:is(:focus, :valid) {
      background: #444;
      padding: 16px 20px 0;
    }

    .form-control label {
      position: absolute;
      left: 20px;
      top: 50%;
      transform: translateY(-50%);
      font-size: 1rem;
      pointer-events: none;
      color: #8c8c8c;
      transition: all 0.1s ease;
    }

    .form-control input:is(:focus, :valid) ~ label {
      font-size: 0.75rem;
      transform: translateY(-130%);
    }

    form button {
      width: 100%;
      padding: 16px 0;
      font-size: 1rem;
      background: #e50914;
      color: #fff;
      font-weight: 500;
      border-radius: 4px;
      border: none;
      outline: none;
      margin: 25px 0 10px;
      cursor: pointer;
      transition: 0.1s ease;
    }

    form button:hover {
      background: #c40812;
    }

    .form-wrapper a {
      text-decoration: none;
    }

    .form-wrapper a:hover {
      text-decoration: underline;
    }

    .form-wrapper :where(label, p, small, a) {
      color: #b3b3b3;
    }

    form .form-help {
      display: flex;
      justify-content: space-between;
    }

    form .remember-me {
      display: flex;
    }

    form .remember-me input {
      margin-right: 5px;
      accent-color: #b3b3b3;
    }

    form .form-help :where(label, a) {
      font-size: 0.9rem;
    }

    .form-wrapper p a {
      color: #fff;
    }

    .form-wrapper small {
      display: block;
      margin-top: 15px;
      color: #b3b3b3;
    }

    .form-wrapper small a {
      color: #0071eb;
    }

    /* Pesan Error */
    .error-message {
      color: #ff4d4d;
      font-weight: bold;
      margin-bottom: 10px;
      text-align: center;
    }

    @media (max-width: 740px) {
      body::before {
        display: none;
      }
      nav,
      .form-wrapper {
        padding: 20px;
      }
      nav a img {
        width: 140px;
      }
      .form-wrapper {
        width: 100%;
        top: 43%;
      }
      .form-wrapper form {
        margin: 25px 0 40px;
      }
    }
  </style>
</head>
<body>
<div class="form-wrapper">
    <h2>Login</h2>
    <!-- Tampilkan pesan error jika ada -->
    <?php if (!empty($error)) : ?>
      <p class="error-message"><?php echo $error; ?></p>
    <?php endif; ?>
    <form action="" method="POST">
      <div class="form-control">
        <input type="text" name="username" required>
        <label>Username</label>
      </div>
      <div class="form-control">
        <input type="password" name="password" required>
        <label>Password</label>
      </div>
      <button type="submit" name="login" class="login-btn">Login</button>
    </form>
    <p>Baru di Layar Cinema? <a href="register.php">Daftar Sekarang</a></p>
  </div>
</body>
</html>
