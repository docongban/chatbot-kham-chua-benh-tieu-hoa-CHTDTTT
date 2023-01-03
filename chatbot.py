import operator
import time
from pytextdist.edit_distance import lcs_similarity
import mysql.connector

import re

class bcolors:
  HEADER = '\033[95m'
  OKBLUE = '\033[94m'
  OKCYAN = '\033[96m'
  OKGREEN = '\033[92m'
  WARNING = '\033[93m'
  FAIL = '\033[91m'
  ENDC = '\033[0m'
  BOLD = '\033[1m'
  UNDERLINE = '\033[4m'

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

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="admin",
  database="tieu_hoa"
)
mycursor = mydb.cursor()

tieu_chi = ["ăn uống","nôn","đi ngoài","bụng","cân nặng","da","dạ dày","máu","họng","tiền sử","gan","sốt"]

an_uong = "A01"
non = "N01"
di_ngoai = "DN01"
bung = "B01"
can_nang = "CN01"
da = "D01"
da_day = "DD01"
mau = "M01"
hong = "H01"
tien_su = "TS01"
gan = "G01"
sot = "S01"
 
ts_an_uong = 6
ts_non = 8
ts_di_ngoai = 8
ts_bung = 10
ts_can_nang = 4
ts_da = 6
ts_da_day = 10
ts_mau = 8
ts_hong = 4
ts_tien_su = 6
ts_gan = 10
ts_sot = 6

def typing(x):
    global an_uong, non, di_ngoai, bung, can_nang, da, da_day, mau, hong, tien_su, gan, sot

    trieu_chung=""

    for i in tieu_chi:
        if i in x:
            trieu_chung = i
            break

    # lấy tên tiêu chí(triệu chứng)
    trieu_chung_DB = no_accent_vietnamese(trieu_chung.replace(" ",'_'))

    # nếu không tìm được tên tiêu chí sẽ yêu cầu người dùng nhập lại cho đến khi tìm được
    while trieu_chung_DB == "":
        print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Bạn có thể nói rõ tình trạng hoặc một bộ phận nào đó của bạn gặp vấn đề. Ví dụ như: nôn, đi ngoài, bụng, máu, ...")
        x = input(f"{bcolors.HEADER}User:{bcolors.ENDC} ")
        for i in tieu_chi:
            if i in x:
                trieu_chung = i
                # lấy tên tiêu chí(triệu chứng)
                trieu_chung_DB = no_accent_vietnamese(trieu_chung.replace(" ",'_'))
                break

    # lấy tất cả trạng thái của tiêu chí(triệu chứng)
    sql = f"SELECT id,code,name FROM {trieu_chung_DB}"
    mycursor.execute(sql)
    result = mycursor.fetchall()

    dict = {}
    trieu_chung_code = ""

    # lấy trạng thái của tiêu chí(triệu chứng) phù hợp nhất
    for r in result:
        dict[r[1]] = lcs_similarity(no_accent_vietnamese(r[2].lower()), no_accent_vietnamese(x.lower()))

    maxDuDoan = max(dict.items(), key=operator.itemgetter(1))
    # Nếu tỉ lệ giống nhau quá 70% thì chọn không sẽ yêu cầu ng dùng nhập chi tiết tình trạng
    if maxDuDoan[1] >= 0.7:
        trieu_chung_code = no_accent_vietnamese(maxDuDoan[0].replace('-','').replace(',','').replace(' ',''))
    else: 
        print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Bạn có thể nói rõ cụ thể {trieu_chung} của bạn như thế nào được không ạ?")
        if(len(result) > 3):
            print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Ví dụ như: {result[1][2]}, {result[2][2]}, {result[3][2]}, ...")
        else: 
            resultL3 = f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Ví dụ như: "
            for i, r in enumerate(result):
                if i == 0: continue
                resultL3 += r[2]
            resultL3 += " ..."
            print(resultL3)

        print(f"{bcolors.HEADER}User:{bcolors.ENDC} ", end="")
        x = input()

        dict = {}
        trieu_chung_code = ""

        # lấy trạng thái của tiêu chí(triệu chứng) phù hợp nhất
        for r in result:
            dict[r[1]] = lcs_similarity(no_accent_vietnamese(r[2].lower()), no_accent_vietnamese(x.lower()))
        for i in sorted(dict, key=dict.get, reverse=True):
            trieu_chung_code = no_accent_vietnamese(i.replace('-','').replace(',','').replace(' ',''))
            break

    # gán lại giá trị(trạng thái) cho tiêu chí ứng với tên tiêu chí vừa tìm
    if "an_uong" == trieu_chung_DB:
        an_uong = trieu_chung_code
    elif "non" == trieu_chung_DB:
        non = trieu_chung_code
    elif "di_ngoai" == trieu_chung_DB:
        di_ngoai = trieu_chung_code
    elif "bung" == trieu_chung_DB:
        bung = trieu_chung_code
    elif "can_nang" == trieu_chung_DB:
        can_nang = trieu_chung_code
    elif "da" == trieu_chung_DB:
        da = trieu_chung_code
    elif "da_day" == trieu_chung_DB:
        da_day = trieu_chung_code
    elif "mau" == trieu_chung_DB:
        mau = trieu_chung_code
    elif "hong" == trieu_chung_DB:
        hong = trieu_chung_code
    elif "tien_su" == trieu_chung_DB:
        tien_su = trieu_chung_code
    elif "gan" == trieu_chung_DB:
        gan = trieu_chung_code
    elif "sot" == trieu_chung_DB:
        sot = trieu_chung_code
    
    return trieu_chung

def tuong_tac():
    print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Chúng tôi có thể giúp gì cho bạn?")
    while True:

        x = input(f"{bcolors.HEADER}User:{bcolors.ENDC} ")
        if "khong" in no_accent_vietnamese(x.lower()):
            break 
        print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Ngoài {typing(x)} ra bạn còn bị vấn đề gì khác nữa không?")      

    # print(an_uong)
    # print(non)
    # print(di_ngoai)
    # print(bung)
    # print(can_nang)
    # print(da)
    # print(da_day)
    # print(mau)
    # print(hong)
    # print(tien_su)
    # print(gan)
    # print(sot)

def get_do_tuong_dong_theo_case(table, input, code):
  sql = f"select {input} from {table} where code='{code}'"
  mycursor.execute(sql)
  result = mycursor.fetchone()
  return result[0]

def chuan_doan():
  sql = f"SELECT * FROM case_benh"
  mycursor.execute(sql)
  result = mycursor.fetchall()

  allResult = {}
  for index,x in enumerate(result):

    dtd_an_uong = float(get_do_tuong_dong_theo_case('an_uong',an_uong,x[1]))
    dtd_non = float(get_do_tuong_dong_theo_case('non',non,x[2]))
    dtd_di_ngoai = float(get_do_tuong_dong_theo_case('di_ngoai',di_ngoai,x[3]))
    dtd_bung = float(get_do_tuong_dong_theo_case('bung',bung,x[4]))
    dtd_can_nang = float(get_do_tuong_dong_theo_case('can_nang',can_nang,x[5]))
    dtd_da = float(get_do_tuong_dong_theo_case('da',da,x[6]))
    dtd_da_day = float(get_do_tuong_dong_theo_case('da_day',da_day,x[7]))
    dtd_mau = float(get_do_tuong_dong_theo_case('mau',mau,x[8]))
    dtd_hong = float(get_do_tuong_dong_theo_case('hong',hong,x[9]))
    dtd_tien_su = float(get_do_tuong_dong_theo_case('tien_su',tien_su,x[10]))
    dtd_gan = float(get_do_tuong_dong_theo_case('gan',gan,x[11]))
    dtd_sot = float(get_do_tuong_dong_theo_case('sot',sot,x[12]))

    # tính Smax
    s = (dtd_an_uong*ts_an_uong + dtd_non*ts_non + dtd_di_ngoai*ts_di_ngoai + dtd_bung*ts_bung 
    + dtd_can_nang*ts_can_nang + dtd_da*ts_da + dtd_da_day*ts_da_day + dtd_mau*ts_mau + dtd_hong*ts_hong 
    + dtd_tien_su*ts_tien_su + dtd_gan*ts_gan + dtd_sot*ts_sot) / (10*3 + 8*3 + 6*4 + 2*4)

    allResult[index+1, x[13], round(s,2)] = round(s,2)

  #   Lấy ra Smax lớn nhất
  return max(allResult.items(), key=operator.itemgetter(1))[0]

def benh_detail(ten_benh):
  sql = f"SELECT dieu_tri, loi_khuyen FROM benh where name like '%{ten_benh}%'"
  mycursor.execute(sql)
  result = mycursor.fetchall()

  return result

while True:
    tuong_tac()

    finalResult = chuan_doan()
    maxResult = str(finalResult).replace('(','').replace(')','').replace('"','').replace("'","")
    stt_case = maxResult.split(', ')[0]
    ten_benh = maxResult.split(', ')[1]
    ti_le = maxResult.split(', ')[2]
    # print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Chúng tôi dự đoán bạn mắc {ten_benh} với tỉ lệ {ti_le} trong case {stt_case}")
    print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Chúng tôi dự đoán bạn mắc {ten_benh}")
    time.sleep(0.5)
    print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Để điều trị {ten_benh} chúng tôi có một vài gợi ý như sau: {benh_detail(ten_benh)[0][0]}")
    time.sleep(1)
    print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Cùng với đó bạn cũng nên {benh_detail(ten_benh)[0][1]}")
    time.sleep(1.5) 
    print(f"{bcolors.OKGREEN}Bot :{bcolors.ENDC} Cảm ơn bạn đã sử dụng dịch vụ chatbot của chúng tôi! Bạn có muốn bắt đầu một cuộc hội thoại mới?")
    hoi_thoai_moi = input(f"{bcolors.HEADER}User:{bcolors.ENDC} ")
    if "khong" in no_accent_vietnamese(hoi_thoai_moi.lower()):
        break
