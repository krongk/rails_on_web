#encoding: utf-8
class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities, :options=>'charset=utf8' do |t|
      t.string :name
			t.string :en_name
      t.integer :region_id
    end
    add_index :cities, :region_id

    City.create(:name => '北京', :region_id => 1)
    City.create(:name => '天津', :region_id => 2)
    City.create(:name => '石家庄', :region_id => 3)
    City.create(:name => '唐山', :region_id => 3)
    City.create(:name => '秦皇岛', :region_id => 3)
    City.create(:name => '邯郸', :region_id => 3)
    City.create(:name => '邢台', :region_id => 3)
    City.create(:name => '保定', :region_id => 3)
    City.create(:name => '张家口', :region_id => 3)
    City.create(:name => '承德', :region_id => 3)
    City.create(:name => '沧州', :region_id => 3)
    City.create(:name => '廊坊', :region_id => 3)
    City.create(:name => '衡水', :region_id => 3)
    City.create(:name => '太原', :region_id => 4)
    City.create(:name => '大同', :region_id => 4)
    City.create(:name => '阳泉', :region_id => 4)
    City.create(:name => '长治', :region_id => 4)
    City.create(:name => '晋城', :region_id => 4)
    City.create(:name => '朔州', :region_id => 4)
    City.create(:name => '晋中', :region_id => 4)
    City.create(:name => '运城', :region_id => 4)
    City.create(:name => '忻州', :region_id => 4)
    City.create(:name => '临汾', :region_id => 4)
    City.create(:name => '吕梁', :region_id => 4)
    City.create(:name => '呼和浩特', :region_id => 5)
    City.create(:name => '包头', :region_id => 5)
    City.create(:name => '乌海', :region_id => 5)
    City.create(:name => '赤峰', :region_id => 5)
    City.create(:name => '通辽', :region_id => 5)
    City.create(:name => '鄂尔多斯', :region_id => 5)
    City.create(:name => '呼伦贝尔', :region_id => 5)
    City.create(:name => '巴彦淖尔', :region_id => 5)
    City.create(:name => '乌兰察布', :region_id => 5)
    City.create(:name => '兴安盟', :region_id => 5)
    City.create(:name => '锡林郭勒盟', :region_id => 5)
    City.create(:name => '聽阿拉善盟聽', :region_id => 5)
    City.create(:name => '沈阳', :region_id => 6)
    City.create(:name => '大连', :region_id => 6)
    City.create(:name => '鞍山', :region_id => 6)
    City.create(:name => '抚顺', :region_id => 6)
    City.create(:name => '本溪', :region_id => 6)
    City.create(:name => '丹东', :region_id => 6)
    City.create(:name => '锦州', :region_id => 6)
    City.create(:name => '营口', :region_id => 6)
    City.create(:name => '阜新', :region_id => 6)
    City.create(:name => '辽阳', :region_id => 6)
    City.create(:name => '盘锦', :region_id => 6)
    City.create(:name => '铁岭', :region_id => 6)
    City.create(:name => '朝阳', :region_id => 6)
    City.create(:name => '葫芦岛', :region_id => 6)
    City.create(:name => '长春', :region_id => 7)
    City.create(:name => '吉林', :region_id => 7)
    City.create(:name => '四平', :region_id => 7)
    City.create(:name => '辽源', :region_id => 7)
    City.create(:name => '通化', :region_id => 7)
    City.create(:name => '白山', :region_id => 7)
    City.create(:name => '松原', :region_id => 7)
    City.create(:name => '白城', :region_id => 7)
    City.create(:name => '延边', :region_id => 7)
    City.create(:name => '哈尔滨', :region_id => 8)
    City.create(:name => '齐齐哈尔', :region_id => 8)
    City.create(:name => '鸡西', :region_id => 8)
    City.create(:name => '鹤岗', :region_id => 8)
    City.create(:name => '双鸭山', :region_id => 8)
    City.create(:name => '大庆', :region_id => 8)
    City.create(:name => '伊春', :region_id => 8)
    City.create(:name => '佳木斯', :region_id => 8)
    City.create(:name => '七台河', :region_id => 8)
    City.create(:name => '牡丹江', :region_id => 8)
    City.create(:name => '黑河', :region_id => 8)
    City.create(:name => '绥化', :region_id => 8)
    City.create(:name => '大兴安岭', :region_id => 8)
    City.create(:name => '上海', :region_id => 9)
    City.create(:name => '南京', :region_id => 10)
    City.create(:name => '无锡', :region_id => 10)
    City.create(:name => '徐州', :region_id => 10)
    City.create(:name => '常州', :region_id => 10)
    City.create(:name => '苏州', :region_id => 10)
    City.create(:name => '南通', :region_id => 10)
    City.create(:name => '连云港', :region_id => 10)
    City.create(:name => '淮安', :region_id => 10)
    City.create(:name => '盐城', :region_id => 10)
    City.create(:name => '扬州', :region_id => 10)
    City.create(:name => '镇江', :region_id => 10)
    City.create(:name => '泰州', :region_id => 10)
    City.create(:name => '宿迁', :region_id => 10)
    City.create(:name => '杭州', :region_id => 11)
    City.create(:name => '宁波', :region_id => 11)
    City.create(:name => '温州', :region_id => 11)
    City.create(:name => '嘉兴', :region_id => 11)
    City.create(:name => '湖州', :region_id => 11)
    City.create(:name => '绍兴', :region_id => 11)
    City.create(:name => '金华', :region_id => 11)
    City.create(:name => '衢州', :region_id => 11)
    City.create(:name => '舟山', :region_id => 11)
    City.create(:name => '台州', :region_id => 11)
    City.create(:name => '丽水', :region_id => 11)
    City.create(:name => '合肥', :region_id => 12)
    City.create(:name => '芜湖', :region_id => 12)
    City.create(:name => '蚌埠', :region_id => 12)
    City.create(:name => '淮南', :region_id => 12)
    City.create(:name => '马鞍山', :region_id => 12)
    City.create(:name => '淮北', :region_id => 12)
    City.create(:name => '铜陵', :region_id => 12)
    City.create(:name => '安庆', :region_id => 12)
    City.create(:name => '黄山', :region_id => 12)
    City.create(:name => '滁州', :region_id => 12)
    City.create(:name => '阜阳', :region_id => 12)
    City.create(:name => '宿州', :region_id => 12)
    City.create(:name => '巢湖', :region_id => 12)
    City.create(:name => '六安', :region_id => 12)
    City.create(:name => '亳州', :region_id => 12)
    City.create(:name => '池州', :region_id => 12)
    City.create(:name => '宣城', :region_id => 12)
    City.create(:name => '福州', :region_id => 13)
    City.create(:name => '厦门', :region_id => 13)
    City.create(:name => '莆田', :region_id => 13)
    City.create(:name => '三明', :region_id => 13)
    City.create(:name => '泉州', :region_id => 13)
    City.create(:name => '漳州', :region_id => 13)
    City.create(:name => '南平', :region_id => 13)
    City.create(:name => '龙岩', :region_id => 13)
    City.create(:name => '宁德', :region_id => 13)
    City.create(:name => '南昌', :region_id => 14)
    City.create(:name => '景德镇', :region_id => 14)
    City.create(:name => '萍乡', :region_id => 14)
    City.create(:name => '九江', :region_id => 14)
    City.create(:name => '新余', :region_id => 14)
    City.create(:name => '鹰潭', :region_id => 14)
    City.create(:name => '赣州', :region_id => 14)
    City.create(:name => '吉安', :region_id => 14)
    City.create(:name => '宜春', :region_id => 14)
    City.create(:name => '抚州', :region_id => 14)
    City.create(:name => '上饶', :region_id => 14)
    City.create(:name => '济南', :region_id => 15)
    City.create(:name => '青岛', :region_id => 15)
    City.create(:name => '淄博', :region_id => 15)
    City.create(:name => '枣庄', :region_id => 15)
    City.create(:name => '东营', :region_id => 15)
    City.create(:name => '烟台', :region_id => 15)
    City.create(:name => '潍坊', :region_id => 15)
    City.create(:name => '威海', :region_id => 15)
    City.create(:name => '济宁', :region_id => 15)
    City.create(:name => '泰安', :region_id => 15)
    City.create(:name => '日照', :region_id => 15)
    City.create(:name => '莱芜', :region_id => 15)
    City.create(:name => '临沂', :region_id => 15)
    City.create(:name => '德州', :region_id => 15)
    City.create(:name => '聊城', :region_id => 15)
    City.create(:name => '滨州', :region_id => 15)
    City.create(:name => '菏泽', :region_id => 15)
    City.create(:name => '郑州', :region_id => 16)
    City.create(:name => '开封', :region_id => 16)
    City.create(:name => '洛阳', :region_id => 16)
    City.create(:name => '平顶山', :region_id => 16)
    City.create(:name => '焦作', :region_id => 16)
    City.create(:name => '鹤壁', :region_id => 16)
    City.create(:name => '新乡', :region_id => 16)
    City.create(:name => '安阳', :region_id => 16)
    City.create(:name => '濮阳', :region_id => 16)
    City.create(:name => '许昌', :region_id => 16)
    City.create(:name => '漯河', :region_id => 16)
    City.create(:name => '三门峡', :region_id => 16)
    City.create(:name => '南阳', :region_id => 16)
    City.create(:name => '商丘', :region_id => 16)
    City.create(:name => '信阳', :region_id => 16)
    City.create(:name => '周口', :region_id => 16)
    City.create(:name => '驻马店', :region_id => 16)
    City.create(:name => '武汉', :region_id => 17)
    City.create(:name => '黄石', :region_id => 17)
    City.create(:name => '襄樊', :region_id => 17)
    City.create(:name => '十堰', :region_id => 17)
    City.create(:name => '荆州', :region_id => 17)
    City.create(:name => '宜昌', :region_id => 17)
    City.create(:name => '荆门', :region_id => 17)
    City.create(:name => '鄂州', :region_id => 17)
    City.create(:name => '孝感', :region_id => 17)
    City.create(:name => '黄冈', :region_id => 17)
    City.create(:name => '咸宁', :region_id => 17)
    City.create(:name => '随州', :region_id => 17)
    City.create(:name => '恩施州', :region_id => 17)
    City.create(:name => '长沙', :region_id => 18)
    City.create(:name => '株洲', :region_id => 18)
    City.create(:name => '湘潭', :region_id => 18)
    City.create(:name => '衡阳', :region_id => 18)
    City.create(:name => '邵阳', :region_id => 18)
    City.create(:name => '岳阳', :region_id => 18)
    City.create(:name => '常德', :region_id => 18)
    City.create(:name => '张家界', :region_id => 18)
    City.create(:name => '益阳', :region_id => 18)
    City.create(:name => '郴州', :region_id => 18)
    City.create(:name => '永州', :region_id => 18)
    City.create(:name => '怀化', :region_id => 18)
    City.create(:name => '娄底', :region_id => 18)
    City.create(:name => '湘西州', :region_id => 18)
    City.create(:name => '广州', :region_id => 19)
    City.create(:name => '深圳', :region_id => 19)
    City.create(:name => '珠海', :region_id => 19)
    City.create(:name => '汕头', :region_id => 19)
    City.create(:name => '韶关', :region_id => 19)
    City.create(:name => '佛山', :region_id => 19)
    City.create(:name => '江门', :region_id => 19)
    City.create(:name => '湛江', :region_id => 19)
    City.create(:name => '茂名', :region_id => 19)
    City.create(:name => '肇庆', :region_id => 19)
    City.create(:name => '惠州', :region_id => 19)
    City.create(:name => '梅州', :region_id => 19)
    City.create(:name => '汕尾', :region_id => 19)
    City.create(:name => '河源', :region_id => 19)
    City.create(:name => '阳江', :region_id => 19)
    City.create(:name => '清远', :region_id => 19)
    City.create(:name => '东莞', :region_id => 19)
    City.create(:name => '中山', :region_id => 19)
    City.create(:name => '潮州', :region_id => 19)
    City.create(:name => '揭阳', :region_id => 19)
    City.create(:name => '云浮', :region_id => 19)
    City.create(:name => '南宁', :region_id => 20)
    City.create(:name => '柳州', :region_id => 20)
    City.create(:name => '桂林', :region_id => 20)
    City.create(:name => '梧州', :region_id => 20)
    City.create(:name => '北海', :region_id => 20)
    City.create(:name => '防城港', :region_id => 20)
    City.create(:name => '钦州', :region_id => 20)
    City.create(:name => '贵港', :region_id => 20)
    City.create(:name => '玉林', :region_id => 20)
    City.create(:name => '百色', :region_id => 20)
    City.create(:name => '贺州', :region_id => 20)
    City.create(:name => '河池', :region_id => 20)
    City.create(:name => '来宾', :region_id => 20)
    City.create(:name => '崇左', :region_id => 20)
    City.create(:name => '海口', :region_id => 21)
    City.create(:name => '三亚', :region_id => 21)
    City.create(:name => '重庆', :region_id => 22)
    City.create(:name => '成都', :region_id => 23)
    City.create(:name => '自贡', :region_id => 23)
    City.create(:name => '攀枝花', :region_id => 23)
    City.create(:name => '泸州', :region_id => 23)
    City.create(:name => '德阳', :region_id => 23)
    City.create(:name => '绵阳', :region_id => 23)
    City.create(:name => '广元', :region_id => 23)
    City.create(:name => '遂宁', :region_id => 23)
    City.create(:name => '内江', :region_id => 23)
    City.create(:name => '乐山', :region_id => 23)
    City.create(:name => '南充', :region_id => 23)
    City.create(:name => '宜宾', :region_id => 23)
    City.create(:name => '广安', :region_id => 23)
    City.create(:name => '达州', :region_id => 23)
    City.create(:name => '眉山', :region_id => 23)
    City.create(:name => '雅安', :region_id => 23)
    City.create(:name => '巴中', :region_id => 23)
    City.create(:name => '资阳', :region_id => 23)
    City.create(:name => '阿坝州', :region_id => 23)
    City.create(:name => '甘孜州', :region_id => 23)
    City.create(:name => '凉山州', :region_id => 23)
    City.create(:name => '贵阳', :region_id => 24)
    City.create(:name => '六盘水', :region_id => 24)
    City.create(:name => '遵义', :region_id => 24)
    City.create(:name => '安顺', :region_id => 24)
    City.create(:name => '铜仁', :region_id => 24)
    City.create(:name => '毕节', :region_id => 24)
    City.create(:name => '黔西南州', :region_id => 24)
    City.create(:name => '黔东南州', :region_id => 24)
    City.create(:name => '黔南州', :region_id => 24)
    City.create(:name => '昆明', :region_id => 25)
    City.create(:name => '曲靖', :region_id => 25)
    City.create(:name => '玉溪', :region_id => 25)
    City.create(:name => '保山', :region_id => 25)
    City.create(:name => '昭通', :region_id => 25)
    City.create(:name => '丽江', :region_id => 25)
    City.create(:name => '普洱', :region_id => 25)
    City.create(:name => '临沧', :region_id => 25)
    City.create(:name => '文山州', :region_id => 25)
    City.create(:name => '红河州', :region_id => 25)
    City.create(:name => '西双版纳州', :region_id => 25)
    City.create(:name => '楚雄州', :region_id => 25)
    City.create(:name => '大理州', :region_id => 25)
    City.create(:name => '德宏州', :region_id => 25)
    City.create(:name => '怒江州', :region_id => 25)
    City.create(:name => '迪庆州', :region_id => 25)
    City.create(:name => '拉萨', :region_id => 26)
    City.create(:name => '昌都', :region_id => 26)
    City.create(:name => '山南', :region_id => 26)
    City.create(:name => '日喀则', :region_id => 26)
    City.create(:name => '那曲', :region_id => 26)
    City.create(:name => '阿里', :region_id => 26)
    City.create(:name => '林芝', :region_id => 26)
    City.create(:name => '西安', :region_id => 27)
    City.create(:name => '铜川', :region_id => 27)
    City.create(:name => '宝鸡', :region_id => 27)
    City.create(:name => '咸阳', :region_id => 27)
    City.create(:name => '渭南', :region_id => 27)
    City.create(:name => '延安', :region_id => 27)
    City.create(:name => '汉中', :region_id => 27)
    City.create(:name => '榆林', :region_id => 27)
    City.create(:name => '安康', :region_id => 27)
    City.create(:name => '商洛', :region_id => 27)
    City.create(:name => '兰州', :region_id => 28)
    City.create(:name => '嘉峪关', :region_id => 28)
    City.create(:name => '金昌', :region_id => 28)
    City.create(:name => '白银', :region_id => 28)
    City.create(:name => '天水', :region_id => 28)
    City.create(:name => '武威', :region_id => 28)
    City.create(:name => '张掖', :region_id => 28)
    City.create(:name => '平凉', :region_id => 28)
    City.create(:name => '酒泉', :region_id => 28)
    City.create(:name => '庆阳', :region_id => 28)
    City.create(:name => '定西', :region_id => 28)
    City.create(:name => '陇南', :region_id => 28)
    City.create(:name => '临夏州', :region_id => 28)
    City.create(:name => '甘南州', :region_id => 28)
    City.create(:name => '西宁', :region_id => 29)
    City.create(:name => '海东', :region_id => 29)
    City.create(:name => '海北', :region_id => 29)
    City.create(:name => '黄南', :region_id => 29)
    City.create(:name => '海南', :region_id => 29)
    City.create(:name => '果洛', :region_id => 29)
    City.create(:name => '玉树', :region_id => 29)
    City.create(:name => '海西', :region_id => 29)
    City.create(:name => '银川', :region_id => 30)
    City.create(:name => '石嘴山', :region_id => 30)
    City.create(:name => '吴忠', :region_id => 30)
    City.create(:name => '固原', :region_id => 30)
    City.create(:name => '中卫', :region_id => 30)
    City.create(:name => '乌鲁木齐', :region_id => 31)
    City.create(:name => '克拉玛依', :region_id => 31)
    City.create(:name => '吐鲁番', :region_id => 31)
    City.create(:name => '哈密', :region_id => 31)
    City.create(:name => '和田', :region_id => 31)
    City.create(:name => '阿克苏', :region_id => 31)
    City.create(:name => '喀什', :region_id => 31)
    City.create(:name => '克孜勒苏柯尔克孜', :region_id => 31)
    City.create(:name => '巴音郭楞蒙古', :region_id => 31)
    City.create(:name => '昌吉回族', :region_id => 31)
    City.create(:name => '博尔塔拉蒙古', :region_id => 31)
    City.create(:name => '伊犁哈萨克', :region_id => 31)
    City.create(:name => '塔城', :region_id => 31)
    City.create(:name => '阿勒泰', :region_id => 31)
  end

  def self.down
    drop_table :cities
  end
end
