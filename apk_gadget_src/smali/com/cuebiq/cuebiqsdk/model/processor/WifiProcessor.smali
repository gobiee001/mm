.class public Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;
.super Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;
.source "WifiProcessor.java"


# instance fields
.field private final mWifiList:Lcom/cuebiq/cuebiqsdk/utils/WifiList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->WIFI_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    invoke-direct {p0, v0}, Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;-><init>(Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;)V

    .line 29
    new-instance v0, Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;-><init>()V

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->mWifiList:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    .line 30
    return-void
.end method


# virtual methods
.method public collectWifi(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Ljava/util/List;Landroid/net/wifi/WifiInfo;)V
    .locals 6
    .param p1, "information"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .param p3, "activeWifiConnection"    # Landroid/net/wifi/WifiInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/net/wifi/WifiInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;-><init>()V

    .line 62
    .local v0, "connectedWifi":Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->setSsid(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->setLinkSpeed(Ljava/lang/Integer;)V

    .line 65
    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->setRssi(Ljava/lang/Integer;)V

    .line 66
    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->setBssid(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->mWifiList:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    invoke-virtual {v3, v0}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;)Z

    .line 70
    :cond_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 71
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 72
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, ""

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, ""

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "00:00:00:00:00:00"

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;-><init>()V

    .line 81
    .local v2, "wifi":Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->setSsid(Ljava/lang/String;)V

    .line 83
    iget v4, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->setRssi(Ljava/lang/Integer;)V

    .line 84
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->setBssid(Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->mWifiList:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    invoke-virtual {v4, v2}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->mWifiList:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    invoke-virtual {v4, v2}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;)Z

    goto :goto_0

    .line 91
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v2    # "wifi":Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi Processor -> WiFi found: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->mWifiList:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    invoke-virtual {v4}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->mWifiList:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 93
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setWifis(Lcom/cuebiq/cuebiqsdk/utils/WifiList;)V

    .line 98
    :cond_3
    :goto_1
    return-void

    .line 95
    :cond_4
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->mWifiList:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    invoke-virtual {p1, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setWifis(Lcom/cuebiq/cuebiqsdk/utils/WifiList;)V

    goto :goto_1
.end method

.method public gather(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "information"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .param p3, "listener"    # Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 36
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 38
    .local v0, "activeWifiConnection":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    .line 39
    .local v2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-le v5, v6, :cond_2

    .line 40
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 41
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, v2, v0}, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->collectWifi(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Ljava/util/List;Landroid/net/wifi/WifiInfo;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    .end local v0    # "activeWifiConnection":Landroid/net/wifi/WifiInfo;
    .end local v2    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    if-eqz p3, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->getType()Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;->onProcessorCompleted(Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;)V

    .line 58
    :cond_1
    return-void

    .line 44
    .restart local v0    # "activeWifiConnection":Landroid/net/wifi/WifiInfo;
    .restart local v2    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 49
    .end local v0    # "activeWifiConnection":Landroid/net/wifi/WifiInfo;
    .end local v2    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v3

    .line 50
    .local v3, "se":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    .end local v3    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v5, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Erro during collect Wifis: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6, v1}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public getWifiList()Lcom/cuebiq/cuebiqsdk/utils/WifiList;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->mWifiList:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    return-object v0
.end method
