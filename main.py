import operator
import mysql.connector

import re

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

# def chon_tieu_chi(table, tieu_chi):
#   print(tieu_chi)
#   sql = f"SELECT id,code,name FROM {table}"
#   mycursor.execute(sql)
#   result = mycursor.fetchall()

#   for r in result:
#     print(f"{r[0]}. {r[2]}")

#   x = int(input())
#   for r in result:
#     if x == r[0]:
#       return no_accent_vietnamese(r[1].replace('-','').replace(',','').replace(' ',''))

# an_uong = chon_tieu_chi("an_uong","Ăn uống")
# non = chon_tieu_chi("non","Nôn")
# di_ngoai = chon_tieu_chi("di_ngoai","Đi ngoài")
# bung = chon_tieu_chi("bung","Bụng")
# can_nang = chon_tieu_chi("can_nang","Cân nặng")
# da = chon_tieu_chi("da","Da")
# da_day = chon_tieu_chi("da_day","Dạ dày")
# mau = chon_tieu_chi("mau","Máu")
# hong = chon_tieu_chi("hong","Họng")
# tien_su = chon_tieu_chi("tien_su","Tiền sử")
# gan = chon_tieu_chi("gan","Gan")
# sot = chon_tieu_chi("sot","Sốt")

an_uong = "A01"
non = "N02"
di_ngoai = "DN01"
bung = "B01"
can_nang = "CN01"
da = "D01"
da_day = "DD04"
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

def benh_detail(index):
  sql = "SELECT * FROM benh"
  mycursor.execute(sql)
  result = mycursor.fetchall()

  return result[index][2]

def get_do_tuong_dong_theo_case(table, input, code):
  sql = f"select {input} from {table} where code='{code}'"
  mycursor.execute(sql)
  result = mycursor.fetchone()
  return result[0]

def chuan_doan(table, benh):
  sql = f"SELECT * FROM {table}"
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

    s = (dtd_an_uong*ts_an_uong + dtd_non*ts_non + dtd_di_ngoai*ts_di_ngoai + dtd_bung*ts_bung 
    + dtd_can_nang*ts_can_nang + dtd_da*ts_da + dtd_da_day*ts_da_day + dtd_mau*ts_mau + dtd_hong*ts_hong 
    + dtd_tien_su*ts_tien_su + dtd_gan*ts_gan + dtd_sot*ts_sot) / (10*3 + 8*3 + 6*4 + 2*4)

    allResult[index+1, benh, round(s,2)] = round(s,2)

  # print(max(allResult.items(), key=operator.itemgetter(1))[0], benh_detail(stt))
  return max(allResult.items(), key=operator.itemgetter(1))[0]

chuan_doan_viem_loet_da_day = chuan_doan("case_viem_loet_da_day","Viêm loét dạ dày")
chuan_doan_thung_o_loet_da_day = chuan_doan("case_thung_o_loet_da_day","Thủng ổ loét dạ dày")
chuan_doan_xuat_huyet_da_day = chuan_doan("case_xuat_huyet_da_day","Xuất huyết dạ dày")
chuan_doan_trao_nguoc_da_day = chuan_doan("case_trao_nguoc_da_day","Trào ngược dạ dày")
chuan_doan_ung_thu_da_day = chuan_doan("case_ung_thu_da_day","Ung thư dạ dày")
chuan_doan_hep_mon_vi = chuan_doan("case_hep_mon_vi","Hẹp môn vị")
chuan_doan_ap_xe_gan = chuan_doan("case_ap_xe_gan","Áp xe gan")
chuan_doan_ung_thu_gan = chuan_doan("case_ung_thu_gan","Ung thư gan")
chuan_doan_tac_mat_gan = chuan_doan("case_tac_mat_gan","Tắc mật gan")
chuan_doan_xo_gan_gan = chuan_doan("case_xo_gan_gan","Xơ gan")
chuan_doan_viem_gan_a = chuan_doan("case_viem_gan_a","Viêm gan A")
chuan_doan_viem_gan_b = chuan_doan("case_viem_gan_b","Viêm gan B")
chuan_doan_viem_gan_c = chuan_doan("case_viem_gan_c","Viêm gan C")
chuan_doan_viem_gan_d = chuan_doan("case_viem_gan_d","Viêm gan D")
chuan_doan_viem_gan_e = chuan_doan("case_viem_gan_e","Viêm gan E")

# chuan_doan("case_viem_loet_da_day","Viêm loét dạ dày", 0)
# chuan_doan("case_thung_o_loet_da_day","Thủng ổ loét dạ dày", 1)
# chuan_doan("case_xuat_huyet_da_day","Xuất huyết dạ dày", 2)
# chuan_doan("case_trao_nguoc_da_day","Trào ngược dạ dày", 3)
# chuan_doan("case_ung_thu_da_day","Ung thư dạ dày", 4)
# chuan_doan("case_hep_mon_vi","Hẹp môn vị", 5)
# chuan_doan("case_ap_xe_gan","Áp xe gan", 6)
# chuan_doan("case_ung_thu_gan","Ung thư gan", 7)
# chuan_doan("case_tac_mat_gan","Tắc mật gan", 8)
# chuan_doan("case_xo_gan_gan","Xơ gan", 9)
# chuan_doan("case_viem_gan_a","Viêm gan A", 10)
# chuan_doan("case_viem_gan_b","Viêm gan B", 11)
# chuan_doan("case_viem_gan_c","Viêm gan C", 12)
# chuan_doan("case_viem_gan_d","Viêm gan D", 13)
# chuan_doan("case_viem_gan_e","Viêm gan E", 14)


allChuanDoan = {}
def tach_chuan_doan(chuan_doan):
  lst_str = str(chuan_doan).replace('(','').replace(')','').split(', ')
  allChuanDoan[lst_str[0],lst_str[1]] = lst_str[2]

tach_chuan_doan(chuan_doan_viem_loet_da_day)
tach_chuan_doan(chuan_doan_thung_o_loet_da_day)
tach_chuan_doan(chuan_doan_xuat_huyet_da_day)
tach_chuan_doan(chuan_doan_trao_nguoc_da_day)
tach_chuan_doan(chuan_doan_ung_thu_da_day)
tach_chuan_doan(chuan_doan_hep_mon_vi)
tach_chuan_doan(chuan_doan_ap_xe_gan)
tach_chuan_doan(chuan_doan_ung_thu_gan)
tach_chuan_doan(chuan_doan_tac_mat_gan)
tach_chuan_doan(chuan_doan_xo_gan_gan)
tach_chuan_doan(chuan_doan_viem_gan_a)
tach_chuan_doan(chuan_doan_viem_gan_b)
tach_chuan_doan(chuan_doan_viem_gan_c)
tach_chuan_doan(chuan_doan_viem_gan_d)
tach_chuan_doan(chuan_doan_viem_gan_e)

keyMaxChuanDoan = max(allChuanDoan.items(), key=operator.itemgetter(1))[0]
valueMaxChuanDoan = max(allChuanDoan.items(), key=operator.itemgetter(1))[1]

maxResult = str(keyMaxChuanDoan).replace('(','').replace(')','').replace('"','').replace("'","")
stt_case = maxResult.split(', ')[0]
ten_benh = maxResult.split(', ')[1]
print(f"Chúng tôi dự đoán bạn mắc {ten_benh} với tỉ lệ {valueMaxChuanDoan} trong case {stt_case}")



# import sqlite3
# mydb = sqlite3.connect("tieu_hoa.db")
# mycursor = mydb.cursor()
# mycursor.execute('''create table benh(
# 	id INTEGER primary key AUTOINCREMENT,
#     name varchar(255),
#     dieu_tri longtext,
#     loi_khuyen longtext)''')
# mycursor.execute('''
# create table an_uong(
# 	id INTEGER primary key AUTOINCREMENT,
#     name varchar(255),
#     code varchar(10),
#     A01 varchar(10),
#     A02 varchar(10)
# ),
# ''')
# mycursor.execute(''' insert into an_uong(name,code,A01,A02) values("Bình thường","A-01",1,0) ''')
# mydb.commit()
# mycursor.execute('''insert into benh(name, dieu_tri, loi_khuyen) values
# ("Viêm loét dạ dày","Ngưng huốc kháng viêm không sreroid (NSAID) hay dùng các phác đồ tiệt trừ vi khuẩn Helicobacter pylori, nếu có. Hiện nay do việc đề kháng thuốc lan rộng của vi khuẩn nên phác đồ thường dùng là phác đồ 4 thuốc có Bismuth hoặc có Levofloxacin","Nên ăn: sữa, trứng, thực phẩm có nhiều đạm dễ tiêu: thịt lợn nạc, các nạc, rau củ tươi, các thức ăn có chứa tinh bột ít mùi vị và dễ tiêu như cơm, bánh mì,…<br>Không nên ăn: các loại thịt nguội chế biến sẵn như dăm bông, xúc xích, lạp sườn, …, những loại thực phẩm khô cứng, đồ chua cay, thức uống có ga, cà phê, đồ uống có cồn, chất kích thích, thuốc lá"),
# ("Thủng ổ loét dạ dày","Chỉ định phẫu thuật khâu lỗ thủng dạ dày tá tràng. Mục đích chính chính là là sạch ổ bụng, khâu kín và làm liền vết thủng. Tùy vào từng trường hợp mà bác sĩ sẽ thực hiện khâu vết thủng đơn thuần hoặc kèm theo các kỹ thuật tạo hình môn vị, nối vị tràng,... Có thể thực hiện khâu lỗ thủng dạ dày bằng cách mở bụng hoặc qua cách nội soi ổ bụng","Trước phẫu thuật: tắm toàn bộ cơ thể sạch sẽ, tháo toàn bộ trang sức phụ kiện, cần đi vệ sinh trước phẫu thuật, cần có người giám hộ đi cùng<br>	Sau phẫu thuật: có 1 vài phản ứng phụ như: đau tức ở vị trí mổ, chướng bụng, chóng mặt, buồn nôn. Nếu có những triêu chứng sau: đau liên tục, chảy máu tại vết mổ, nôn ra máu, vết mổ bị sưng kèm theo sốt, chảy dịch thì cần báo cho bác sĩ ngay. Uống nước đường, chút sữa và dần dần sang cháo loãng, nên chia nhỏ thành nhiều khẩu phần và phải đảm bảo ăn chính uống sôi"),
# ("Xuất huyết dạ dày","Với những trường hợp nhẹ thì ko cần can thiệp y tế, nếu tình trạng nghiêm trọng, chảy máu nhiều, liên tục và thường xuyên, người bệnh buộc phải tiến hành xét nghiệm, thực hiện các thủ thuật y khoa hoặc uống thuốc theo chỉ định của bác sĩ","Giữ tinh thần thoải mái, tránh stress quá mức, thường xuyên luyện tập thể thao để tăng cường sức khỏe, ăn chín uống sôi, nói không với thực phẩm bẩn, hạn chế nước ngọt có ga, bia rượu, Sinh hoạt hợp lý, không ăn quá no hoặc để bụng quá đói, không ngủ ngay sau khi ăn"),
# ("Trào ngược dạ dày","Điều trị trào ngược dạ dày thực quản bao gồm các phương pháp thay đổi lối sống, thay đổi chế độ ăn, điều trị nội khoa, điều trị ngoại khoa và các thủ thuật khác. Phương pháp không dùng thuốc luôn được các bác sĩ khuyến khích bệnh nhân của mình. Một chế độ sinh hoạt hợp lý hay một chế độ ăn khoa học làm giảm đáng kể tần suất trào ngược dạ dày thực quản","Ăn thành từng bữa nhỏ. Nên ăn thường xuyên hơn là ăn ít bữa lớn đối với người có dấu hiệu trào ngược dạ dày thực quản, Lựa chọn các thực phẩm có tính kiềm, có khả năng trung hòa axit như thực phẩm từ tinh bột (bánh mì, bột yến mạch) hay đạm dễ tiêu, Hạn chế thực phẩm kích thích tăng tiết axit hay kích thích cơ thắt dưới thực quản: hoa quả có hàm lượng axit cao (chanh, cam, dứa...) và ít các sản phẩm từ sữa, Giảm sử dụng các thực phẩm giàu chất béo; thực phẩm chua cay, Không hút thuốc, uống rượu bia, đồ uống có gas, không sử dụng các chất kích thích, Giữ cân nặng hợp lý, Không nằm hoặc lao động ngay sau khi ăn, Thư giãn giảm stress có thể làm giảm triệu chứng trào ngược dạ dày thực quản một cách rõ ràng"),
# ("Ung thư dạ dày","Phẫu thuật: Bác sĩ sẽ tiến hành cắt bỏ 1 phần hay toàn bộ dạ dày. Đây là phương pháp điều trị chủ yếu đối với ung thư dạ dày ở giai đoạn sớm<br>Hóa trị: Điều trị bằng các loại thuốc chống ung thư đặc biệt để tiêu diệt và ngăn cản sự phát triển của tế bào ung thư<br>Xạ trị: Dùng các tia phóng xạ để tiêu diệt các tế bào ung thư<br>Điều trị đích: Cũng là phương pháp trị ung thư bằng thuốc nhưng thuốc ở đây là một liệu pháp có mục tiêu cụ thể, tấn công vào các gen hay protein chuyên biệt được tìm thấy ở tế bào ung thư hoặc những tế bào có liên quan đến sự phát triển của khối u<br>Điều trị miễn dịch: Sử dụng các loại thuốc tác động vào hệ miễn dịch của người bệnh, giúp tiêu diệt tế bào ung thư","Duy trì cân nặng lý tưởng, giảm cân nếu béo phì, Tập luyện thể thao thường xuyên, Xây dựng chế độ ăn uống khoa học, an toàn vệ sinh thực phẩm, chế độ ăn giàu chất xơ, vitamin và khoáng chất, Hạn chế ăn các thực phẩm đóng hộp, thức ăn chế biến sẵn, nhiều dầu mỡ, nhiều muối, Bỏ thuốc lá, hạn chế bia rượu và không sử dụng các chất kích thích, Nếu mắc phải các bệnh về dạ dày, cần thăm khám sớm và điều trị triệt để, Khám và chữa trị tốt các khối polyp, khối u lành tính trong dạ dày"),
# ("Hẹp môn vị","Thủ thuật phẫu thuật cho hẹp môn vị được gọi là pyloromyotomy trẻ có sức khỏe kém và bị mất nước nghiêm trọng, bác sĩ sẽ tiến hành bù nước và truyền dịch để phục hồi thể trạng trước khi thực hiện phẫu thuật. Sau 24-48 giờ, được về nhà và có thể ăn uống bình thường","Giữ tinh thần thoải mái, chia nhỏ bữa để tránh áp lực lên dạ dày và môn vị, nếu bệnh nhân sốt cao, nôn mửa, mệt mỏi,… Trong vòng 1-3 ngày nên đưa đến bệnh viện để chẩn đoán và điều trị kịp thời"),
# ("Áp xe gan","o	Điều trị: Bệnh nhân bị áp xe gan được các bác sĩ phẫu thuật chọc hút ổ áp xe trước khi điều trị nội khoa. Sau đó bệnh phẩm được nuôi cấy và bệnh nhân được cho thuốc dựa vào kết quả kháng sinh đồ. Đây là sự phối hợp điều trị mang lại hiệu quả cao và tiết kiệm kinh phí chữa trị cho người bệnh. Điều trị bằng lưu rút mủ qua da nhưng phương pháp này có những hạn chế khó áp dụng với các áp xe lớn, nhiều ổ áp xe, các bệnh kết hợp như bệnh đường mật cần phẫu thuật","Thực hiện ăn chín uống sôi: không ăn các loại thức ăn sống như nem, gỏi, tiết canh... Không uống nước chưa được đun sôi như nước lã ao, hồ, suối... Rửa sạch tay bằng xà phòng trước khi ăn và sau khi đi vệ sinh. Khi cơ thể có dấu hiệu nhiễm khuẩn, cần đến cơ sở y tế khám và chữa trị ngay"),
# ("Ung thư gan","Việc lựa chọn phương pháp điều trị ung thư gan phải phụ thuộc vào mức độ lan rộng của tổn thương và tình trạng xơ gan, các phương pháp điều trị ung thư gan phổ biến bao gồm: phẫu thuật, ghép gan, phá hủy u tại chỗ, nút hóa chất động mạch gan, xạ trị, hóa trị hay điều trị nhắm trúng đích","Khám sức khỏe định kỳ siêu âm gan 6 tháng/lần, tiêm đầy đủ vacxin phòng viêm gan B, tránh tiếp xúc với các hóa chất độc hại dễ làm tổn thương gan để giảm nguy cơ mắc bệnh. Khi nghi ngờ mắc ung thư gan, bác sĩ sẽ chỉ định xét nghiệm máu, thăm chụp cắt lớp, sinh thiết gan… để đưa ra kết luận chính xác"),
# ("Tắc mật gan","Nếu bệnh nhân bị ứ mật vàng da do bị sỏi mật thì bác sĩ sẽ chỉ định cho dùng thuốc kháng sinh và thuốc giảm đau trong điều trị nhiễm trùng, khuyến khích áp dụng biện pháp nội soi để gắp sỏi mật đang làm tắc nghẽn ống mật. Nếu nguyên nhân là do có khối u ác tính, có thể tiến hành phẫu thuật cho bệnh nhân để loại bỏ khối u; tuy nhiên đa phần trong hầu hết các trường hợp bệnh nhân sẽ được chỉ định dùng biện pháp khác hiệu quả hơn để thay thế phẫu thuật đó là xạ trị hoặc hóa trị","Áp dụng ngay cho mình một chế độ dinh dưỡng lành mạnh, cân bằng và hạn chế việc tiêu thụ nhiều thực phẩm giàu chất béo, tránh xa rượu bia và đồ uống có cồn"),
# ("Xơ gan","Sử dụng thuốc để kiểm soát viêm gan siêu vi: Thuốc điều trị viêm gan B hoặc C có thể hạn chế tổn thương tế bào gan do các tình trạng này gây ra<br>Cai rượu: Người bị xơ gan tuyệt đối không được sử dụng rượu. Những người bị xơ gan do lạm dụng rượu cần phải cai rượu<br>Giảm cân: Những người bị xơ gan do viêm gan nhiễm mỡ không do rượu cần giảm cân và kiểm soát lượng đường trong máu<br>	Sử dụng thuốc kiểm soát các nguyên nhân và triệu chứng khác của xơ gan: Một số loại xơ gan, chẳng hạn như xơ gan ứ mật nguyên phát, đáp ứng tốt với thuốc điều trị","Tránh ăn các thức ăn nhiều gia vị, giàu mỡ. Cần ăn nhiều loại protein được nấu nhừ. Bên cạnh đó cũng cần ăn các chất xơ như cam, cà rốt, gạo lứt, đậu đỏ, các loại rau xanh. Trong giai đoạn này bệnh nhân nên uống nhiều nước, đặc biệt nước cam, nước chanh vừa tăng lượng sinh tố, vừa tăng nước cho cơ thể. Tuyệt đối bỏ rượu, nên sử dụng dầu thực vật và nên chia thành nhiều bữa ăn trong ngày"),
# ("Viêm gan A","Không có phương pháp đặc hiệu để điều trị viêm gan A. Cơ thể người bệnh sẽ tự đào thải virus viêm gan A sau vài tuần mà không cần chữa trị","Thường xuyên rửa tay bằng xà phòng, đặc biệt là sau khi đi vệ sinh, trước khi ăn và chế biến thức ăn, nấu chín thức ăn, không ăn sống động vật hoặc nấu chưa chín, không dùng chung đồ dùng sinh hoạt cá nhân với người có bệnh"),
# ("Viêm gan B","Việc điều trị chủ yếu là ngăn chặn sự sinh sôi, nhân lên của virus hoặc các chất làm rối loạn quá trình tổng hợp, tự nhân lên của virus.Trường hợp mẹ đã nhiễm HBV, sau sinh em bé cần được tiêm huyết thanh đặc hiệu chống virus HBV","Tăng cường đề kháng của cơ thể bằng nghỉ ngơi, chế độ ăn uống cần chú ý đến các loại thực phẩm có lợi cho gan, hạn chế uống rượu, nên tiêm phòng vắc xin viêm gan B càng sớm càng tốt"),
# ("Viêm gan C","Tiến hành một số xét nghiệm để đánh giá được tổn thương gan, qua đó lên phác đồ điều trị hợp lý nhất. Đối với những trường hợp mắc viêm gan C mạn tính thì dung thuốc điều trị kháng virus là phương pháp cần thiết","Ngừng hoặc hạn chế tối đa sử dụng rượu bia, chế độ dinh dưỡng có lợi cho gan, tăng cường vận động tiêu thụ năng lượng, ngủ đủ giấc và hạn chế trạng thái căng thẳng"),
# ("Viêm gan D","Hiện nay chưa có phương pháp điều trị đặc hiệu nào đối với viêm gan D cấp tính hoặc mãn tính. Bệnh nhân bị nhiễm HDV có thể được chỉ định điều trị bằng thuốc ví dụ như: Pegylated interferon alpha, Myrcludex B","Ăn uống ngủ nghỉ điều độ, vận động hợp lý, kiêng rượu bia thuốc lá chất kích thích, thận trọng khi điều trị với thuốc và luôn giữ cho thể trạng luôn trong trạng thái tốt nhất"),
# ("Viêm gan E","Viêm gan E thường tự giới hạn mà không cần điều trị nên nói chung bệnh nhân nhiễm HEV không cần được nhập viện. Tuy nhiên, việc nhập viện là cần thiết đối với những người bị viêm gan virus E tối cấp và việc nhập viện cũng cần được xem xét đối với phụ nữ mang thai có triệu chứng nhiễm HEV","Ăn uống ngủ nghỉ điều độ, ăn chin uống sôi, không ăn các sản phẩm đồ ăn không rõ nguồn gốc, vận động hợp lý, kiêng rượu bia thuốc lá chất kích thích, thận trọng khi điều trị với thuốc và luôn giữ cho thể trạng luôn trong trạng thái tốt nhất")
# ''')
# def benh():
    
#     return result[0]
# def sendMessage(*ags, **kws):

#     chat = document.getElementById('chat')
#     import sqlite3
#     mydb = sqlite3.connect("tieu_hoa.db")
#     mycursor = mydb.cursor()
#     sql = "SELECT * FROM benh"
#     mycursor.execute(sql)
#     result = mycursor.fetchone()

#     inputChat = document.getElementById('input-chat').value
#     client = document.createElement("p")
#     client.className = "text-chat"
#     client.innerHTML = inputChat
#     chat.appendChild(client)

#     bot = document.createElement("p")
#     bot.className = "text-chat-auto"
#     bot.innerHTML = result[0]
#     chat.appendChild(bot)
#     document.getElementById('input-chat').value = ''

# mydb.commit()
# print(mycursor.execute('''select * from benh''').fetchall())