import pyodbc

# Connection parameters
server = 'fe80::199:932d:8fd6:e234%9'  # Replace with your server IP
database = 'CompanyDB'
username = 'YourUsername'
password = 'YourPassword123'
driver = 'ODBC Driver 17 for SQL Server'

# Establish a connection to the SQL Server
try:
    connection = pyodbc.connect(
        f'DRIVER={driver};'
        f'SERVER={server};'
        f'DATABASE={database};'
        f'UID={username};'
        f'PWD={password}'
    )
    print("Connection successful!")
except pyodbc.Error as e:
    print(f"Error connecting to database: {e}")
    exit()

# Create a cursor object
cursor = connection.cursor()

# Execute a query to retrieve data
try:
    cursor.execute("SELECT TOP 5 * FROM Employees")
    rows = cursor.fetchall()
    for row in rows:
        print(row)
except pyodbc.Error as e:
    print(f"Error executing query: {e}")

# Close the cursor and connection
cursor.close()
connection.close()
