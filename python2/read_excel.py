
def excel_to_dict(filename):
    # Open the workbook and select the first worksheet.
    workbook = xlrd.open_workbook(filename)
    worksheet = workbook.sheet_by_index(0)

    # Create a dictionary to hold the data.
    data = {}

    # Iterate over the rows and columns and fill in the dictionary.
    for row_idx in range(worksheet.nrows):
        data[worksheet.row(row_idx)[0].value] = worksheet.row(row_idx)[1].value

    return data
