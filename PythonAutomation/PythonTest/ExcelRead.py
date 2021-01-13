import  openpyxl



ex = openpyxl.load_workbook("P:\\Desktop\\GitHub\\RobotFramework\\TestData.xlsx")

print(ex.sheetnames)