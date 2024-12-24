<!DOCTYPE html>
<html>
   <head>
       <title></title>
<style>
.a{
 margin:0;
 padding:0;
}
</style>
</head>

<body>
   <div id="div1">
        <form action="">
            <h1>Dictionary</h1>
            <input type="text" name="word" class="input" placeholder="Enter the word">
            <button class="btn" type="submit">Submit</button>
         </form>   


<?php
$servername = "localhost";
$username = "ayush";
$password = "1234";
try {
$conn = new PDO("mysql:host=$servername;dbname=dict", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$w=$_GET['word'];
$stmt=$conn->prepare("select words.word,means.M_id,means.Meanings,POS.PartOfSpeech,POS.Syllable,POS.Pronounciation,POS.Example from words inner join means on words.SNO_=means.SNO_ inner join POS on  means.M_id=POS.POS_index
 where word='$w'");
$stmt->execute();
$result=$stmt->setFetchMode(PDO::FETCH_ASSOC);
$result=$stmt->fetchAll();

foreach ($result as $row){
   echo "<h1>".$row['word']."</h1>";
   echo "<h5>".$row['M_id']."</h5>";
   echo "<h5>".$row['Meanings']."</h5>";
   echo "<h5>".$row['PartOfSpeech']."</h5>";
    echo "<h5>".$row['Syllable']."</h5>";
   echo "<h5>".$row['Pronounciation']."</h5>";
    echo "<h5>".$row['Example']."</h5>";
     //echo "<h5>".$row['Syn_word']."</h5>";
     // echo "<h5>".$row['Anto_word']."</h5>";
  //echo "<h5>".$row['Meaning']."</h5>";
     //echo "<h5>".$row['gujarati.Meaning']."</h5>";   
      //  echo "<h5>".$row['tamil.Meaning']."</h5>";
   echo "<hr>";
  }
  
} catch(PDOException $e) {
echo "Connection failed: " . $e->getMessage();
}
?>

</div>
</body>
</html>


