.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private bluetoothActive:Ljava/lang/Boolean;

.field private brand:Ljava/lang/String;

.field private carrierCode:Ljava/lang/String;

.field private carrierName:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private isGoogleAdvIDDisabled:Ljava/lang/Boolean;

.field private locale:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osv:Ljava/lang/Integer;

.field private product:Ljava/lang/String;

.field private screenSize:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private timezoneOffset:Ljava/lang/Integer;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "ANDROID"

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 177
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;-><init>()V

    .line 179
    .local v0, "device":Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setOsv(Ljava/lang/Integer;)V

    .line 180
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setManufacturer(Ljava/lang/String;)V

    .line 181
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setBrand(Ljava/lang/String;)V

    .line 182
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setModel(Ljava/lang/String;)V

    .line 183
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setProduct(Ljava/lang/String;)V

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setLocale(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setTimezone(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setTimezoneOffset(Ljava/lang/Integer;)V

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setScreenSize(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 194
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setUserAgent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 204
    .local v2, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v2, :cond_1

    .line 205
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setBluetoothActive(Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    .end local v2    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_2
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 221
    .local v3, "manager":Landroid/telephony/TelephonyManager;
    :try_start_3
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setCarrierCode(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setCarrierName(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 227
    :goto_3
    return-object v0

    .line 188
    .end local v3    # "manager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_4
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setUserAgent(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 198
    :catch_1
    move-exception v4

    goto :goto_1

    .line 207
    .restart local v2    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setBluetoothActive(Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 213
    .end local v2    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_2
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setBluetoothActive(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 210
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    const/4 v4, 0x0

    :try_start_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setBluetoothActive(Ljava/lang/Boolean;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 223
    .end local v2    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v3    # "manager":Landroid/telephony/TelephonyManager;
    :catch_3
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public getBluetoothActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->bluetoothActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->carrierCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsGoogleAdvIDDisabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->isGoogleAdvIDDisabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOsv()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->osv:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->screenSize:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezoneOffset()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->timezoneOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setBluetoothActive(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "bluetoothActive"    # Ljava/lang/Boolean;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->bluetoothActive:Ljava/lang/Boolean;

    .line 73
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->brand:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setCarrierCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->carrierCode:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCarrierName(Ljava/lang/String;)V
    .locals 0
    .param p1, "carrierName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->carrierName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->deviceType:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setIsGoogleAdvIDDisabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isGoogleAdvIDDisabled"    # Ljava/lang/Boolean;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->isGoogleAdvIDDisabled:Ljava/lang/Boolean;

    .line 129
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->locale:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->manufacturer:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->model:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setOsv(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "osv"    # Ljava/lang/Integer;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->osv:Ljava/lang/Integer;

    .line 137
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->product:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenSize"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->screenSize:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->timezone:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTimezoneOffset(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "timezoneOffset"    # Ljava/lang/Integer;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->timezoneOffset:Ljava/lang/Integer;

    .line 81
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->userAgent:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
