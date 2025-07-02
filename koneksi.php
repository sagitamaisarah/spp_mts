<?php

$koneksi = mysqli_connect('localhost', 'root', '', 'spp_mts');

if (!$koneksi) {
    echo "Koneksi Anda Gagal";
}
