create table sys_menu
(
    id               bigint auto_increment comment '编号'
        primary key,
    name             varchar(50)                         null comment '菜单名称',
    parent_id        bigint                              null comment '父菜单ID，一级菜单为0',
    url              varchar(200)                        null,
    perms            varchar(500)                        null comment '授权(多个用逗号分隔，如：sys:user:add,sys:user:edit)',
    type             int                                 null comment '类型   0：目录   1：菜单   2：按钮',
    icon             varchar(50)                         null comment '菜单图标',
    order_num        int                                 null comment '排序',
    create_by        varchar(50)                         null comment '创建人',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    last_update_by   varchar(50)                         null comment '更新人',
    last_update_time datetime                            null comment '更新时间',
    del_flag         tinyint   default 0                 null comment '是否删除  -1：已删除  0：正常',
    vue_path         varchar(64)                         null comment 'vue系统的path',
    vue_component    varchar(64)                         null comment 'vue的页面',
    vue_icon         varchar(64)                         null comment 'vue的图标',
    vue_redirect     varchar(64)                         null comment 'vue的路由重定向'
)
    comment '菜单管理';

INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (24, '订单列表', 20, '/oms/order/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'orderList', 'oms/order/index', 'el-icon-camera', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (10, '操作日志', 8, '/log/sysLog/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'sysLogList', 'log/syslog/index', 'el-icon-camera', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (8, '日志管理', 0, '/log', '', 0, 'DeleteOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, '/log', 'Layout', 'el-icon-delete', '/log/loginLogList');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (9, '登录日志', 8, '/log/loginLog/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'loginLogList', 'log/loginlog/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (3, '用户列表', 2, '/system/user/list', '', 1, '', 1, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 0, 'userList', 'system/user/index', 'el-icon-user', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (4, '角色列表', 2, '/system/role/list', '', 1, '', 2, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 0, 'roleList', 'system/role/index', 'el-icon-female', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (5, '菜单列表', 2, '/system/menu/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 0, 'resourcesList', 'system/resource/index', 'el-icon-postcard', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (6, '机构列表', 2, '/system/dept/list', '', 1, '', 4, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 0, 'deptList', 'system/dept/index', 'el-icon-bangzhu', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (7, '字典列表', 2, '/system/dict/list', '', 1, '', 5, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'dictList', 'system/dict/index', 'el-icon-delete-location', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect)VALUES (33, '职位列表', 2, '/system/job/list', '', 1, '', 6, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 1, 'jobList', 'system/job/index', 'el-icon-delete-location', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (1, '欢迎', 0, '/welcome', '', 0, 'SmileOutlined', 1, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 0, '', '', '', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (2, '系统管理', 0, '/system', '', 0, 'SettingOutlined', 2, 'liufeihua', '2021-02-26 14:45:04', 'liufeihua', '2021-02-26 14:45:04', 0, '/sys', 'Layout', 'el-icon-setting', '/sys/userList');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (16, '商品管理', 0, '/pms', '', 0, 'GiftOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, '/pms', 'Layout', 'el-icon-coffee', '/pms/productList');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (18, '商品品牌', 16, '/pms/productBrand/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'productBrandList', 'pms/product_brand/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (17, '商品类别', 16, '/pms/productCategory/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'productCategoryList', 'pms/product_category/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (19, '商品列表', 16, '/pms/product/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'productList', 'pms/product/index', 'el-icon-camera', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (12, '会员列表', 11, '/ums/member/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'memberList', 'ums/member/index', 'el-icon-camera', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (11, '会员管理', 0, '/ums', '', 0, 'FrownOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, '/ums', 'Layout', 'el-icon-headset', '/ums/memberList');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (13, '会员等级', 11, '/ums/memberLevel/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'memberLevelList', 'ums/member_level/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (14, '会员地址', 11, '/ums/memberAddress/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'memberAddressList', 'ums/member_address/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (15, '登录记录', 11, '/ums/memberLoginLog/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'memberLoginLogList', 'ums/member_login_log/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (20, '订单管理', 0, '/oms', '', 0, 'DollarCircleOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, '/oms', 'Layout', 'el-icon-shopping-cart-full', '/oms/orderList');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (22, '退货列表', 20, '/oms/orderReturnApply/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'orderReturnApplyList', 'oms/order_return_apply/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (23, '退货原因', 20, '/oms/orderReturnReason/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'orderReturnReasonList', 'oms/order_return_reason/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (21, '订单设置', 20, '/oms/orderSetting/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'orderSetting', 'oms/order_setting/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (26, '秒杀活动', 25, '/sms/flashPromotion/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'flashPromotionList', 'sms/flash_promotion/index', 'el-icon-camera', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (25, '营销管理', 0, '/sms', '', 0, 'AlertOutlined', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, '/sms', 'Layout', 'el-icon-cold-drink', '/sms/flashPromotionList');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (27, '品牌推荐', 25, '/sms/homeBrand/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'homeBrandList', 'sms/home_brand/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (28, '新品推荐', 25, '/sms/homeNewProduct/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'homeNewProductList', 'sms/home_new_product/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (29, '人气推荐', 25, '/sms/homeRecommendProduct/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'homeRecommendProductList', 'sms/home_recommend_product/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (30, '专题推荐', 25, '/sms/homeRecommendSubject/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'homeRecommendSubjectList', 'sms/home_recommend_subject/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (31, '广告列表', 25, '/sms/homeAdvertise/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'homeAdvertiseList', 'sms/home_advertise/index', 'el-icon-remove-outline', '');
INSERT INTO gozero.sys_menu (id, name, parent_id, url, perms, type, icon, order_num, create_by, create_time, last_update_by, last_update_time, del_flag, vue_path, vue_component, vue_icon, vue_redirect) VALUES (32, '优惠券', 25, '/sms/coupon/list', '', 1, '', 3, 'liufeihua', '2021-02-26 14:45:05', 'liufeihua', '2021-02-26 14:45:05', 0, 'couponList', 'sms/coupon/index', 'el-icon-remove-outline', '');