<?php
session_start();

$host = "localhost";
$user = "root";
$password = "";
$database = "project";

$koneksi = new mysqli($host, $user, $password, $database);
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $stmt = $koneksi->prepare("SELECT * FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $hasil = $stmt->get_result();

    if ($hasil->num_rows === 1) {
        $data = $hasil->fetch_assoc();

        if (password_verify($password, $data["password"])) {
            $_SESSION["username"] = $username;
            echo "<script>alert('Login berhasil!'); window.location.href='X.jev\'s.html';</script>";
        } else {
            echo "<script>alert('Password salah!'); window.location.href='login.html';</script>";
        }
    } else {
        echo "<script>alert('Username tidak ditemukan!'); window.location.href='login.html';</script>";
    }

    $stmt->close();
    $koneksi->close();
}
?>
