use Spreadsheet::ParseExcel;

my $file='hoge.xls';

for(my $i=1000;$i<10000;$i++){
  my $excel = new Spreadsheet::ParseExcel(Password => $i);
  my $book = $excel->Parse($file);
  if ( defined $book ){
    print "password is $i\n";
    exit;
  }
}
