<?php
include "../header.php";
include "../sidebar_left.php";
include '../class/user_class.php';
?>
<?php
$user = new User();
if(!isset($_GET['user_id']) || $_GET['user_id'] == '')
{
    echo "<script>window.location = 'list.php'</script>";
}
else
{
    $user_id = $_GET['user_id'];
}
$get_user = $user->get_user($user_id);
if($get_user)
{
    $row = $get_user->fetch_assoc();
}
?>
<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $user_password = $_POST['user_password'];
    $user_image = $_FILES['user_img']['name'];
    $insert_user = $user->update_user($user_id,$username,$email,$user_password,$user_image);
}
?>
<div class="col py-3">
    <form action="" method="post">
        <div class="form-group">
            <div class="h2 text-primary p-4 row">Edit User:</div>
            <label for="username" class="fw-bold">Nhập tên người dùng:</label>
            <input required type="text" class="form-control mt-2" id="username" placeholder="Nhập tên người dùng"
                name="username" value ="<?php echo $row['username'];?>">
            <label for="email" class="fw-bold">Nhập Email:</label>
            <input required type="email" class="form-control mt-2" id="email" placeholder="Nhập email" name="email" value ="<?php echo $row['email'];?>">
            <label for="user_password" class="fw-bold">Nhập password:</label>
            <input required type="password" class="form-control mt-2" id="user_password" placeholder="Nhập password"
                name="user_password" value ="<?php echo $row['password'];?>">
            <label for="user_img" class="fw-bold">Upload hình ảnh cá nhân:</label>
            <input required type="file" class="form-control mt-2" id="user_img" placeholder="Upload Avatar"
                name="user_img">
        </div>
        <button type="submit" class="btn btn-primary mt-3">Edit</button>
    </form>
</div>
</div>
</div>
</main>
</body>

</html>