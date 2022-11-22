import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="admin",
  database="tieu_hoa"
)
mycursor = mydb.cursor()

def benh_detail(index):
  sql = "SELECT * FROM benh"
  mycursor.execute(sql)
  result = mycursor.fetchall()

  return result[index][2]