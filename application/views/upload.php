<!DOCTYPE html>
<html>
<head>
	<title>Upload CSV</title>
</head>
<body>
<?php echo form_open_multipart('upload/do_upload');?>
	<input type="file" name='csv_file' accept=".csv">
	<input type="submit" value="Upload">
<?php echo form_close();?>
</body>
</html>