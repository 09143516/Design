##实验室设备管理系统数据库设计
###1.模型图
![1](https://github.com/09143516/Design/blob/master/images/1.PNG)
![2](https://github.com/09143516/Design/blob/master/images/2.PNG)
###2.E-R图
![3](https://github.com/09143516/Design/blob/master/images/3.PNG)
###3.物理实现
####实体表.
>用户表（UserInfo）
>
>字段	类型	备注
uId	Varchar(15)	用户名，主键
uName	Varchar(15)	姓名
uPasswd	Varchar(15)	密码
uPosition	Varchar(15)	身份，主键
>
>仓库管理员表（StoreManagerInfo）
>
>字段	类型	备注
uId	Varchar(15)	用户名，主键
sId	Varchar(15)	仓库编号，外键约束于仓库表
>
>实验室管理员表（StoreManagerInfo）
>
>字段	类型	备注
uId	Varchar(15)	用户名，主键
lId	Varchar(15)	仓库编号，外键约束于实验室表
>
>仓库表（StoreInfo）
>
>字段	类型	备注
sId	Varchar(15)	仓库编号，主键
sName	Varchar(15)	仓库名称
sPlace	Varchar(15)	所在校区
>
>实验室表（LabInfo）
>
>字段	类型	备注
lId	Varchar(15)	实验室编号，主键
lName	Varchar(15)	实验室名称
lPlace	Varchar(15)	所在校区
>
>设备表（EquipInfo）
>
>字段	类型	备注
eId	Varchar(15)	设备编号，主键
eName	Varchar(15)	设备名称
eStandard	Varchar(15)	规格型号
eProCompany	Varchar(15)	生产厂商
eType	Varchar(15)	设备类型
>
>固定资产表（PropertyInfo）
>
>字段	类型	备注
pId	Varchar(15)	固定资产编号，主键
eId	Varchar(15)	所属设备编号，外键约束于设备表
lId	Varchar(15)	所在实验室编号，外键约束于实验室表
>
> 关系表
>
>入库登记表（InInfo）
>
>字段	类型	备注
eId	Varchar(15)	设备编号，主键，外键约束于设备表
sId	Varchar(15)	仓库编号，主键，外键约束于仓库表
iDate	DateTime	入库时间，主键
iNum	int	        入库数量
>
>出库登记表（OutInfo）
>
>字段	类型	备注
eId	Varchar(15)	设备编号，主键，外键约束于设备表
sId	Varchar(15)	仓库编号，主键，外键约束于仓库表
lId	Varchar(15)	实验室编号，主键，外键约束于实验室表
iDate	DateTime	出库时间，主键
iNum	int	出库数量
>
> 记录表
>
>购买申请表（BuyApplyInfo）
字段	类型	备注
baId	Varchar(15)	序列号，主键
eId	Varchar(15)	设备编号，外键约束于设备表
smName	Varchar(15)	申请人，外键约束于仓库管理员表
baDate	DateTime	申请时间
baNum	Int	申请数量
>
>维修申请表（MaintainInfo）
字段	类型	备注
maId	Varchar(15)	序列号，主键
pId	Varchar(15)	固定资产编号，外键约束于固定资产表
lmName	Varchar(15)	申请人，外键约束于实验室管理员表
maDate	DateTime	申请时间
>
>购买登记表（BuyInfo）
字段	类型	备注
bId	Varchar(15)	序列号，主键
eId	Varchar(15)	设备编号，外键约束于设备表
bPrice	Money	购买单价
bDate	DateTime	购买时间
bNum	Int	购买数量
>
>维修记录表（MaintainInfo）
字段	类型	备注
mId	Varchar(15)	序列号，主键
pId	Varchar(15)	固定资产编号，外键约束于固定资产表
mDate	DateTime	维修时间
>
>报废记录表（DiscardInfo）
字段	类型	备注
dId	Varchar(15)	序列号，主键
pId	Varchar(15)	固定资产编号，外键约束于固定资产表
dDate	DateTime	报废时间
>
>购买审核表（BuyCheckInfo）
字段	类型	备注
bcId	Varchar(15)	序列号，主键
baId	Varchar(15)	申请序列号，外键约束于购买申请表
olName	Varchar(15)	审核人，外键约束于上级领导表
bcDate	DateTime	审核时间
>
>维修审核表（MaintainCheckInfo）
字段	类型	备注
mcId	Varchar(15)	序列号，主键
maId	Varchar(15)	申请序列号，外键约束于维修申请表
olName	Varchar(15)	审核人，外键约束于上级领导表
mcDate	DateTime	审核时间
>


