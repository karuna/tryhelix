#[macro_use]
extern crate helix;
extern crate csv;

ruby! {
    class CsvReader {
        def count_id(filename: String) -> i64 {
            let mut total : i64 = 0;
            let mut rdr = csv::Reader::from_file(filename)
                                       .unwrap()
                                       .has_headers(true);
            for row in rdr.records() {
                let record = row.unwrap();
                let new_number : i64 = record[0].trim()
                                                .parse()
                                                .unwrap();
                total += new_number;
            }
            total
        }
    }
}
