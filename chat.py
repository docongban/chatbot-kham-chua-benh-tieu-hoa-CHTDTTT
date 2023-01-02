import mysql.connector
from pytextdist.edit_distance import lcs_similarity
import re

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="admin",
  database="tieu_hoa"
)
mycursor = mydb.cursor()
def no_accent_vietnamese(s):
  s = re.sub('[áàảãạăắằẳẵặâấầẩẫậ]', 'a', s)
  s = re.sub('[ÁÀẢÃẠĂẮẰẲẴẶÂẤẦẨẪẬ]', 'A', s)
  s = re.sub('[éèẻẽẹêếềểễệ]', 'e', s)
  s = re.sub('[ÉÈẺẼẸÊẾỀỂỄỆ]', 'E', s)
  s = re.sub('[óòỏõọôốồổỗộơớờởỡợ]', 'o', s)
  s = re.sub('[ÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢ]', 'O', s)
  s = re.sub('[íìỉĩị]', 'i', s)
  s = re.sub('[ÍÌỈĨỊ]', 'I', s)
  s = re.sub('[úùủũụưứừửữự]', 'u', s)
  s = re.sub('[ÚÙỦŨỤƯỨỪỬỮỰ]', 'U', s)
  s = re.sub('[ýỳỷỹỵ]', 'y', s)
  s = re.sub('[ÝỲỶỸỴ]', 'Y', s)
  s = re.sub('đ', 'd', s)
  s = re.sub('Đ', 'D', s)
  return s
def benh_detail(index):
  sql = "SELECT * FROM benh"
  mycursor.execute(sql)
  result = mycursor.fetchall()

  return result[index][2]

print(lcs_similarity(no_accent_vietnamese("đi ngoài nhiều lần trong ngày"), no_accent_vietnamese("tần suất đi ngoài nhiều hơn")))