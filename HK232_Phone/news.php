<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HHA Phone - "Vua" Phone</title>
    <meta name="description" content="Trang web bán laptop chất lượng với giá cả hợp lý.">
    <meta name="keywords" content="laptop, mua laptop, giá laptop">
    <link rel="icon" href="./img/ltnn.png">
    <link rel="stylesheet" href="./icon/fontawesome-free-6.2.0-web/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/e26d989c97.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- Slider -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style1.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/countingNumber.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">
</head>

<body>
    <div class="app">
        <?php
        include ("pages/header.php")
            ?>
        <div class="main">
            <!-- breadcrumb -->
            <div class="breadcrumb-wrap">
                <div class="container">
                    <div class="row">
                        <ul class="breadcrumb " style="align-items: center;">
                            <?php
                            $breadcrumbs = array(
                                'Trang chủ' => 'index.php',
                                'Giới thiệu' => '#'
                            );
                            foreach ($breadcrumbs as $title => $link) {
                                if ($link === '#') {
                                    echo '<li class="breadcrumb-item">' . $title . '</li>';
                                } else {
                                    echo '<li class="breadcrumb-item"><a href="' . $link . '">' . $title . '</a></li>';
                                }
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- End breadcrumb -->
            <!-- Start News Item -->
            <div class="container">
                <div class="row">
                    <?php     
                    require_once "ConnectDB.php";

                    $per_page_record = 4;  // Number of entries to show in a page.   
                    // Look for a GET variable page if not found default is 1.        
                    if (isset($_GET["page"])) {
                        $page = $_GET["page"];
                    } else {
                        $page = 1;
                    }

                    $start_from = ($page - 1) * $per_page_record;

                    // $query = "SELECT * FROM blog LIMIT $start_from, $per_page_record";     
                    // $rs_result = mysqli_query ($conn, $query);
                    $stmt = $conn->prepare("SELECT * FROM new LIMIT $start_from, $per_page_record");
                    $stmt->setFetchMode(PDO::FETCH_ASSOC);
                    $stmt->execute();
                    $blog = $stmt->fetchAll();
                    ?>
                </div>
            </div>
        </div>
        <?php
        include ("pages/footer.php")
            ?>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="./js/main.js"></script>
    <script src="./js/main1.js"></script>
</body>

</html>