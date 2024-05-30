# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"G121.12","system":"readv2"},{"code":"G541212","system":"readv2"},{"code":"24D5.00","system":"readv2"},{"code":"G541300","system":"readv2"},{"code":"G122.00","system":"readv2"},{"code":"G132.13","system":"readv2"},{"code":"G130.00","system":"readv2"},{"code":"G541500","system":"readv2"},{"code":"P712.13","system":"readv2"},{"code":"791A200","system":"readv2"},{"code":"24D..11","system":"readv2"},{"code":"P6y0.00","system":"readv2"},{"code":"G120.00","system":"readv2"},{"code":"G541100","system":"readv2"},{"code":"P722400","system":"readv2"},{"code":"G132.12","system":"readv2"},{"code":"G131.13","system":"readv2"},{"code":"G131.00","system":"readv2"},{"code":"G133.12","system":"readv2"},{"code":"G131.14","system":"readv2"},{"code":"24D6.00","system":"readv2"},{"code":"G541012","system":"readv2"},{"code":"G133.00","system":"readv2"},{"code":"G132.00","system":"readv2"},{"code":"P711.13","system":"readv2"},{"code":"G133.11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('valvular-disease-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["subaortic-valvular-disease-elixhauser-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["subaortic-valvular-disease-elixhauser-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["subaortic-valvular-disease-elixhauser-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
