import xlsxwriter

def dict_to_excel(dictionary, filename):
    # Create a workbook and add a worksheet.
    workbook = xlsxwriter.Workbook(filename)
    worksheet = workbook.add_worksheet()

    # Start from the first cell. Rows and columns are zero indexed.
    row = 0
    col = 0

    # Iterate over the data and write it out row by row.
    for key, value in dictionary.items():
        worksheet.write(row, col, key)
        worksheet.write(row, col + 1, value)
        row += 1

    # Close the workbook.
    workbook.close()
my_dict = {"a": 1, "b": 2, "c": 3}
dict_to_excel(my_dict, "my_file.xlsx")
