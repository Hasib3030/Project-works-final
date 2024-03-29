<?php
    session_start();
    require_once('../DB/dbStudent/StudentFunctions.php');
    require_once('../DB/Functions.php');
    if(isset($_SESSION['Username']))
    {
        $username = $_SESSION['Username'];
        $password = $_SESSION['Password'];

        
        if(isset($_POST['btnProfile']))
        {
            header('location:SProfile.php');
        }
        if(isset($_POST['btnTimeLine']))
        {
            header('location:TimeLine.php');
        }
        if(isset($_POST['btnChat']))
        {
            header('location:Chat.php');
        }
        if(isset($_POST['btnLogout']))
        {
            header('location:../php/Logout.php');
        }

        

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="App.css">
    <link rel="stylesheet" href="Admin.css">
    <title>Home</title>
</head>
<body class="body-margin">
    <form action="#" method="POST">
    <table border="0" width="100%">
        <tr class="Profile-Header">
        <div class="sticky">
            <td width=25%>
                <center>
                    <h3><?=$_SESSION['Username'] ?></h3>
                </center>
            </td>
            <td>
                <center>
                    <button class="profile-HeaderButton">Home</button>
                    
                    <button class="profile-HeaderButton" name="btnProfile">Profile</button>
                    <button class="profile-HeaderButton" name="btnTimeLine">TimeLine</button>
                    
                    <button class="profile-HeaderButton" name="btnLogout">Logout</button>
                    </center>
            </td>
            <td width=25%>
              <!--  <input type="search" class="searchBox" name="txtsearch" placeholder="Search...">
                <input type="submit" class="btn-View" value="Search" name="btnSrc">-->
            </td>
            </div>
        </tr>
        <tr>
            <td colspan="3">
                <center>
                    <button class="btnPost" name="btnAllPost">All Post</button>
                    <button class="btnPost" name="btnFacultyPost">FacultyPost</button>
                    <button class="btnPost" name="btnAlumniPost">AlumniPost</button>
                    <button class="btnPost" name="btnStudentPost">StudentPost</button>
                </center>
            </td>
        </tr>

    </table>
    </form>
<?php
    }
    else
    {
        header('location:Login.php');
    }

    if(isset($_POST['btnFacultyPost']))  //Faculty Post
    {
        $post = getFacultyPost($username,$password);
?>

    <center>
        <table border="0" width="50%">
            <tr>
                <td>
                    <center>
                        <h3>Faculty Posts</h3>
                        <hr>
                    </center>
                </td>
            </tr>
            <?php
                for($i=0;$i<count($post);$i++)
                {
            ?>
            <tr>
                <td>
                    <h3><a href="../Profiles/viewFacultyProfile.php?profileOf=<?=$post[$i]['username']; ?>"><?=$post[$i]['username']; ?></a></h3>
                    <i><?=$post[$i]['Date'] ?></i>
                    <p><center><?=$post[$i]['Text'] ?></center></p>

                    <?php
                        if($post[$i]['Image'] == null)
                        {

                        }
                        else
                        {

                        
                    ?>
                    <p>
                        <center>
                            <img src="../Images/Posts/<?=$post[$i]['Image']; ?>" width="380px" height="310px">
                        </center>
                    </p>

                    <?php
                        }
                    ?>
                    <!--<center>
                        <button class="profile-HeaderButton">1 Likes</button>
                    </center> -->
                </td>
            </tr>
            <tr>
                <td>
                    <hr>
                </td>
            </tr>
            <?php
                }
            ?>
        </table>
    </center>
<?php
    }
    elseif(isset($_POST['btnAlumniPost']))  //Alumni Post
    {
        $post = getAlumniPost($username,$password);
?>
<html>
    <body>
    <center>
        <table border="0" width="50%">
            <tr>
                <td>
                    <center>
                        <h3>Alumni Posts</h3>
                        <hr>
                    </center>
                </td>
            </tr>
            <?php
                for($i=0;$i<count($post);$i++)
                {
            ?>
            <tr>
                <td>
                    <h3><a href="../Profiles/viewAlumniProfile.php?profileOf=<?=$post[$i]['username']; ?>"><?=$post[$i]['username']; ?></a></h3>
                    <i><?=$post[$i]['Date'] ?></i>
                    <p><center><?=$post[$i]['Text'] ?></center></p>

                    <?php
                        if($post[$i]['Image'] == null)
                        {

                        }
                        else
                        {

                        
                    ?>
                    <p>
                        <center>
                            <img src="../Images/Posts/<?=$post[$i]['Image']; ?>" width="380px" height="310px">
                        </center>
                    </p>

                    <?php
                        }
                    ?>
                    <!--<center> //Calculating Like
                        <button class="profile-HeaderButton">1 Likes</button>
                    </center>-->
                </td>
            </tr>
            <tr>
                <td>
                    <hr>
                </td>
            </tr>
            <?php
                }
            ?>
        </table>
    </center>
    </body>
</html>

<?php
    }
    elseif(isset($_POST['btnStudentPost']))  //student Post
    {
        $post = getStudentPost($username,$password);
?>
<html>
    <body>
    <center>
        <table border="0" width="50%">
            <tr>
                <td>
                    <center>
                        <h3>Student Posts</h3>
                        <hr>
                    </center>
                </td>
            </tr>
            <?php
                for($i=0;$i<count($post);$i++)
                {
            ?>
            <tr>
                <td>
                    <h3><a href="../Profiles/viewStudentProfile.php?profileOf=<?=$post[$i]['username']; ?>"><?=$post[$i]['username']; ?></a></h3>
                    <i><?=$post[$i]['Date'] ?></i>
                    <p><center><?=$post[$i]['Text'] ?></center></p>

                    <?php
                        if($post[$i]['Image'] == null)
                        {

                        }
                        else
                        {

                        
                    ?>
                    <p>
                        <center>
                            <img src="../Images/Posts/<?=$post[$i]['Image']; ?>" width="380px" height="310px">
                        </center>
                    </p>

                    <?php
                        }
                    ?>
                    <!--<center>
                        <button class="profile-HeaderButton">1 Likes</button>
                    </center>-->
                </td>
            </tr>
            <tr>
                <td>
                    <hr>
                </td>
            </tr>
            <?php
                }
            ?>
        </table>
    </center>
    </body>
</html>

<?php
    }
    elseif(isset($_POST['btnSrc']))
    {
        $keyword = $_POST['txtsearch'];
        $post = searching($keyword);
    ?>
        <html>
    <body>
    <center>
        <table border="0" width="50%">
            <tr>
                <td>
                    <center>
                        <h3>Search Results</h3>
                        <hr>
                    </center>
                </td>
            </tr>
            <?php
                for($i=0;$i<count($post);$i++)
                {
            ?>
            <tr>
                <td>
                    <h3><a href="../Profiles/viewStudentProfile.php?profileOf=<?=$post[$i]['username']; ?>"><?=$post[$i]['username']; ?></a></h3>
                    <i><?=$post[$i]['Date'] ?></i>
                    <p><center><?=$post[$i]['Text'] ?></center></p>

                    <?php
                        if($post[$i]['Image'] == null)
                        {

                        }
                        else
                        {

                        
                    ?>
                    <p>
                        <center>
                            <img src="../Images/Posts/<?=$post[$i]['Image']; ?>" width="380px" height="310px">
                        </center>
                    </p>

                    <?php
                        }
                    ?>
                    <!--<center>
                        <button class="profile-HeaderButton">1 Likes</button>
                    </center>-->
                </td>
            </tr>
            <tr>
                <td>
                    <hr>
                </td>
            </tr>
            <?php
                }
            ?>
        </table>
    </center>
    </body>
</html>
    <?php
    }
    else  //All Post
    {
        $post = getAllPost($username,$password);
?>

<html>
    <body>
    <center>
        <table border="0" width="50%">
            <tr>
                <td>
                    <center>
                        <h3>All Posts</h3>
                        <hr>
                    </center>
                </td>
            </tr>
            <?php
                for($i=0;$i<count($post);$i++)
                {
            ?>
            <tr >
                <td>
                    <table>
                        <tr>
                            <td>  </td>
                            <td> <?php
                                    $status = $post[$i]['Status'];
                                    if($status == "Admin")
                                    {
                                        echo '<h2><u><i>'.$post[$i]['username'].'</i></u></h2>';
                                        echo '<img src="../Images/Admin.png"> ';
                                    }
                                    elseif($status == "Student")
                                    {
                                        echo '<h2><a href="../Profiles/viewStudentProfile.php?profileOf='.$post[$i]['username'].'">'.$post[$i]['username'].'</a> </h2>';
                                        echo '<img src="../Images/student.png"> ';
                                    }

                                    elseif($status == "Alumni")
                                    {
                                        echo '<h2><a href="../Profiles/viewAlumniProfile.php?profileOf='.$post[$i]['username'].'">'.$post[$i]['username'].'</a> </h2>';
                                        echo '<img src="../Images/alumni.png"> ';
                                    }

                                    elseif($status == "Faculty")
                                    {
                                        echo '<h2><a href="../Profiles/viewFacultyProfile.php?profileOf='.$post[$i]['username'].'">'.$post[$i]['username'].'</a> </h2>';
                                        echo '<img src="../Images/faculty.png"> ';
                                    }
                                ?>
                            </td>
                        </tr>
                    </table>
                    <i><?=$post[$i]['Date']; ?></i>
                    <p> <center><?=$post[$i]['Text']; ?> </center></p>
                    <?php
                        if($post[$i]['Image'] == null)
                        {

                        }
                        else
                        {
                    ?>
                    <p><center><img src="../Images/Posts/<?=$post[$i]['Image']; ?>" width="380px" height="310px"> </center> </p>
                    <?php
                        } 
                    ?>
                    <!--<center>
                        <button class="profile-HeaderButton">1 Likes</button>
                    </center> <br><br>  -->
                    <hr>
                </td>
                
                    
            </tr>
            <?php } ?>
            <tr>
                <td>
                    <hr>
                </td>
            </tr>

            
        </table>
    </center>
    </body>
</html>


<?php
    }

?>
        <table width="100%">
        <tr>
            <td class="fotter">
                <center>
                    Copyright@MahfuzNazib
                </center>
            </td>
        </tr>
        </table>
</body>
</html>