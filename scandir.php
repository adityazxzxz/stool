<?php
$conn = mysqli_connect('localhost','root','','stooldb');

$dir    = 'uploads/';
$files1 = scandir($dir);
$scanned = array_diff($files1, array('..', '.'));
foreach ($scanned as $key => $value) {
			$kolom = "";
			

			$explode = explode('.', $value);
			$c_id = substr($explode[0], -1);
			$file = fopen($dir.$value,'r');
			$csv_line = fgetcsv($file,1024);
			/*echo "<table border=1>";
			echo "<thead>";
			echo "<tr>";*/
			foreach ($csv_line as $key => $value) {
				//echo "<th>".$value."</th>";
				$kolom .= ($value != end($csv_line)) ? $value."," : $value;
			}

			//echo $kolom."<br>";
			/*echo "</tr>";
			echo "</thead>";


			echo "<tbody>";
			while ($csv_line = fgetcsv($file,1024)) {
				echo "<tr>";
				echo "<td>".$csv_line[0]."</td>";
				echo "<td>".$csv_line[1]."</td>";
				echo "<td>".$csv_line[1]."</td>";
				echo "</tr>";
			}*/
			$count = 0;
			while ($csv_line = fgetcsv($file,1024)) {
				$record = "";
				//echo "<tr>";
				for ($i=0; $i < count($csv_line); $i++) { 
					//echo "<td>".$csv_line[$i]."</td>";
					end($csv_line);
					$record .= ($i != key($csv_line)) ? "'".$csv_line[$i]."'," : "'".$csv_line[$i]."'";
				}
				$query = "insert into report_master values (".$record.")";
				$sql = mysqli_query($conn,$query);
				if($sql)
					$count ++;
					echo $count." record telah diinput\n";
				$record = "";

				//echo "</tr>";
			}
			/*echo "</tbody>";
			echo "</table>";*/
}
?>