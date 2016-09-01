module ("officekit.util.OKErrorUtil", package.seeall)

function getErrorMessage(errorCode)
    local errorList = {}
    -- 如果code大于1000 则是需要打印msg到客户端
    errorList[1501] = ("设置初始化状态失败")
    errorList[1502] = ("输入不能够为空")
    errorList[1503] = ("设置路由器名称失败")
    errorList[1504] = ("检查更新失败")
    errorList[1505] = ("文件MD5值校验失败,文件下载不完整")
    errorList[1506] = ("没有可用更新")
    errorList[1507] = ("文件不存在或者已经损坏,可以尝试重新下载")
    errorList[1508] = ("MAC地址不合法")
    errorList[1509] = ("文件上传失败")
    errorList[1510] = ("文件不存在或者已经损坏")
    errorList[1511] = ("不支持此语言")
    errorList[1512] = ("文件上传到服务器失败")
    errorList[1513] = ("恢复配置数据失败")
    errorList[1514] = ("路由器名称设置失败")
    errorList[1515] = ("路由器管理密码设置失败")
    errorList[1516] = ("Wifi设置失败")
    errorList[1517] = ("Wifi密码设置失败")
    errorList[1518] = ("外网设置失败")
    errorList[1519] = ("初始设置有未能成功")
    errorList[1520] = ("Wifi密码不能少于8位")
    errorList[1521] = ("Wifi密码应为8~63位")
    errorList[1522] = ("Wifi密码应为5位或13位")
    errorList[1523] = ("参数错误")
    errorList[1524] = ("未能检测上网类型")
    errorList[1525] = ("IP地址不合法")
    errorList[1526] = ("局域网IP不能与外网IP在同一网段.")
    errorList[1527] = ("局域网IP不合法,合法范围为10.0.0.0~10.255.255.255或172.16.0.0~172.23.255.255或192.168.0.0~192.168.255.255")
    errorList[1528] = ("用户名或密码不能为空")
    errorList[1529] = ("外网设置失败")
    errorList[1530] = ("静态IP地址不合法")
    errorList[1531] = ("子网掩码不合法")
    errorList[1532] = ("默认网关不合法")
    errorList[1533] = ("外网IP不合法,合法范围为1.0.0.0~126.255.255.255或128.0.0.0~223.255.255.255")
    errorList[1534] = ("结束地址应高于起始地址")
    errorList[1535] = ("IP范围应为2~254之间")
    errorList[1536] = ("DHCP租用时间范围为2~2880分钟,或1~48小时")
    errorList[1537] = ("参数有误")
    errorList[1538] = ("登录失败")
    errorList[1539] = ("未能获取到用户信息")
    errorList[1540] = ("请求失败")
    errorList[1541] = ("绑定当前路由器失败")
    errorList[1542] = ("您的路由器还未绑定小米账号")
    errorList[1543] = ("获取管理列表失败")
    errorList[1544] = ("获取插件列表失败")
    errorList[1545] = ("开启插件失败")
    errorList[1546] = ("关闭插件失败")
    errorList[1547] = ("获取插件信息失败")
    errorList[1548] = ("该账号不具备此路由器的管理权限")
    errorList[1549] = ("该小米账号已经解绑，您可以用管理账号登录并重新绑定")
    errorList[1550] = ("解绑失败")
    errorList[1551] = ("获取路由器管理列表失败，可能由于路由器系统时间不正确导致")
    errorList[1552] = ("原密码不正确")
    errorList[1553] = ("设置管理密码失败，密码不合法")
    errorList[1554] = ("文件校验失败")
    errorList[1555] = ("系统刷写失败")
    errorList[1556] = ("账号验证失败,请检查网络是否正常密码是否正确")
    errorList[1557] = ("密码不能够为空")
    errorList[1558] = ("格式化硬盘失败")
    errorList[1559] = ("datacenter服务工作不正常")
    errorList[1560] = ("后台已经在执行刷写操作")
    errorList[1561] = ("获取个人信息失败")
    errorList[1562] = ("没有授权")
    errorList[1563] = ("下载资源不可访问，可能是外网不通或者资源已经失效")
    errorList[1564] = ("用户名或密码错误")
    errorList[1565] = ("未能获取到授权信息,可能服务器异常")
    errorList[1566] = ("网络繁忙,服务器无响应")
    errorList[1567] = ("系统检测失败")
    errorList[1568] = ("已经在执行系统升级,请等待")
    errorList[1569] = ("设置数据访问权限失败")
    errorList[1570] = ("上传文件太大，不能超过128M")
    errorList[1571] = ("没有足够存储空间")
    errorList[1572] = ("名字过长，请使用短一些的名字")
    errorList[1573] = ("请输入标准字符，如 Xiaomi.Luyouqi")
    errorList[1574] = ("未能获取到当前模式")
    errorList[1575] = ("设置模式失败")
    errorList[1576] = ("状态信息获取失败")
    errorList[1577] = ("已经升级过,请手动重启路由器")
    errorList[1578] = ("路由器已经没有足够的空间,上传失败")
    errorList[1579] = ("已经在刷写固件，不可以取消")
    errorList[1580] = ("该账号没有路由器的管理权限,您可以尝试退出重新登录")
    errorList[1581] = ("服务器授权已过期,您需要重新登录")
    errorList[1582] = ("nonce 验证错误")
    errorList[1583] = ("VPN设置失败")
    -- For vpn
    errorList[1584] = ("用户名或密码验证失败")
    errorList[1585] = ("无法连接服务器")
    errorList[1586] = ("服务器连接异常，请重试")
    errorList[1587] = ("该接口不允许外网访问")
    errorList[1588] = ("测速失败,您可以尝试重新测试")
    errorList[1589] = ("没有磁盘，请插入磁盘")
    errorList[1590] = ("MTU不正确,合法范围为576 ~ 1498字节")
    errorList[1591] = ("添加失败,最多只能添加32个设备")
    errorList[1592] = ("IP/MAC地址不合法")
    errorList[1593] = ("IP地址与其他设备冲突,请更换IP地址")
    errorList[1594] = ("MAC地址解除绑定失败")
    errorList[1595] = ("开启失败,请检查开发者ID是否有效")
    errorList[1600] = ("获取开发者信息失败")
    errorList[1601] = ("关闭失败")
    errorList[1602] = ("拨号状态获取失败")
    errorList[1603] = ("认证失败（用户密码异常导致）")
    errorList[1604] = ("无法连接服务器")
    errorList[1605] = ("其他异常（协议不匹配等）")
    errorList[1606] = ("操作失败")
    errorList[1607] = ("QoS并未开启,禁止该操作")
    errorList[1608] = ("端口号有冲突,请检查后重新设置")
    errorList[1609] = ("由于DMZ功能开启,无法设置端口转发")
    errorList[1610] = ("由于端口转发功能开启,无法设置DMZ")
    errorList[1611] = ("工作模式冲突")
    errorList[1612] = ("缺少参数")
    errorList[1613] = ("参数中IP地址有冲突")
    errorList[1614] = ("未能查询到该项信息")
    errorList[1615] = ("未能获取到IP")
    errorList[1616] = ("未能连接到指定WiFi")
    errorList[1617] = ("未能扫描到指定WiFi")
    errorList[1618] = ("当前工作在无线中继模式下，不可以设置有线中继")
    errorList[1619] = ("设置有线中继失败，未能获取到IP")
    errorList[1620] = ("国家码有误，请重新选择")
    errorList[1621] = ("未能获取到PPPoE帐号信息")
    -- For mini sys
    errorList[1622] = ("系统错误(请重启路由器)")
    errorList[1623] = ("未能挂载硬盘(您需要返厂维修)")
    errorList[1624] = ("没有USB设备(请插入USB设备)")
    errorList[1625] = ("不能挂载USB设备(格式不支持)")
    if (errorList[errorCode] == nil) then
        return ("未知错误")
    else
        return errorList[errorCode]
    end
end

