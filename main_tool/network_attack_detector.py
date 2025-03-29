from scapy.all import sniff, ARP, IP, Ether


# 监测 MITM 攻击
def detect_mitm(packet, alert_flag):
    if packet.haslayer(ARP):
        print(f"Captured ARP packet: {packet[ARP].psrc} -> {packet[ARP].hwsrc}")  # 打印捕获的 ARP 包
        if packet[ARP].op == 2:  # ARP 响应
            print(
                f"Possible MITM Attack: {packet[ARP].psrc} -> {packet[ARP].hwsrc} is inconsistent with {packet[ARP].pdst}:")
            alert_flag[0] = True  # 标记为攻击检测


# 捕获 ARP 数据包并检查 ARP 欺骗
def detect_arp_spoof(packet, alert_flag):
    if packet.haslayer(ARP):
        print(f"Captured ARP packet: {packet[ARP].psrc} -> {packet[ARP].hwsrc}")  # 打印捕获的 ARP 包
        if packet[ARP].op == 2:  # ARP 响应
            print(f"ARP Spoofing detected: {packet[ARP].psrc} -> {packet[ARP].hwsrc}")
            alert_flag[0] = True  # 标记为攻击检测


# 开始监听数据包
def start_sniffing():
    alert_flag = [False]  # 用列表追踪是否检测到攻击
    print("Starting packet capture...")

    # 增加超时时间和包数量限制
    sniff(prn=lambda pkt: detect_mitm(pkt, alert_flag), filter="arp", store=0, timeout=60)  # 监听 ARP 包
    sniff(prn=lambda pkt: detect_arp_spoof(pkt, alert_flag), filter="arp", store=0, timeout=60)  # 监听 ARP 欺骗包

    # 根据 alert_flag 输出结果
    if alert_flag[0]:
        print("Warning: Potential attack detected!")
    else:
        print("Network is safe.")


start_sniffing()
