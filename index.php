<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Bendahara / Kepala Sekolah - Sistem Informasi Pembayaran SPP</title>
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary">
<div class="container mt-5">
    <div class="row justify-content-md-center">
        <div class="col-md-4">
            <h4 class="text-center text-light">LOGIN BENDAHARA / KEPALA SEKOLAH</h4>
            <div class="card">
                <div class="card-header text-center">
                    <img src="sirajulhuda.png" width="200px" style="border-radius:5px" height="200px">  
                </div>
                <div class="card-body">
                    <form action="proses-login-bendahara.php" method="post">
                        <div class="form-group mb-2">
                            <label>Username</label>
                            <input type="text" name="username" class="form-control" placeholder="Masukkan Username anda" required>
                        </div>
                        <div class="form-group mb-2">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Masukkan password anda" required>
                        </div>
                        <div class="form-group mb-2">
                            <button type="submit" class="btn btn-primary"> LOGIN </button>
                        </div>
                        <a href="index2.php"> Login Sebagai Admin</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>