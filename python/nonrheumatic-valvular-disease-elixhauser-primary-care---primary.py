# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"G110.11","system":"readv2"},{"code":"G14021X","system":"readv2"},{"code":"G140200","system":"readv2"},{"code":"G111.00","system":"readv2"},{"code":"G14z.11","system":"readv2"},{"code":"G140100","system":"readv2"},{"code":"G543012","system":"readv2"},{"code":"G542011","system":"readv2"},{"code":"G111.12","system":"readv2"},{"code":"G542012","system":"readv2"},{"code":"G141000","system":"readv2"},{"code":"G543100","system":"readv2"},{"code":"G140000","system":"readv2"},{"code":"G542100","system":"readv2"},{"code":"G140111","system":"readv2"},{"code":"G141200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('valvular-disease-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["nonrheumatic-valvular-disease-elixhauser-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["nonrheumatic-valvular-disease-elixhauser-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["nonrheumatic-valvular-disease-elixhauser-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
