log_file = open("um-server-01.txt")
# Setting the variable log_file to open and return a file object
# that can be used to read, write and modify the file.


# def sales_reports(log_file):
# defining a function 'sales_reports' that's calling in the log_file
# variable which is set to the open function.
for line in log_file:
# running a for loop within log_file list
        line = line.rstrip().split(' ')
        # print(line)
# returns a string value with the trailing characters like '\n' removed 
        # day = line[0:3]
# defining variable 'day' to return characters from position 0 to
# position 3 (not included) in 'line' using the slice syntax.
        # if day == "Mon":
# # using if statement to see if the condition of day == "Tue" is true
#             print(line)
# prints all the lines that pertains to "Tue" to the terminal
        for value in line:
            if value == line[2]:
             total = int(line[2])
             total > 10
             print(line)
        


# sales_reports(log_file)
# calls the function 'sales_report' with 'log_file' as its argument.

# log_file.close()

