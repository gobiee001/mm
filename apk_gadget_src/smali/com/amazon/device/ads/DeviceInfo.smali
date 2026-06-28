.class Lcom/amazon/device/ads/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ORIENTATION_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final dt:Ljava/lang/String; = "android"

.field private static final os:Ljava/lang/String; = "Android"


# instance fields
.field private bad_mac:Z

.field private bad_serial:Z

.field private bad_udid:Z

.field private carrier:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private landscapeScreenSize:Lcom/amazon/device/ads/Size;

.field private language:Ljava/lang/String;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private macFetched:Z

.field private make:Ljava/lang/String;

.field private md5_mac:Ljava/lang/String;

.field private md5_serial:Ljava/lang/String;

.field private md5_udid:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private portraitScreenSize:Lcom/amazon/device/ads/Size;

.field private scalingFactor:F

.field private scalingFactorAsString:Ljava/lang/String;

.field private serialFetched:Z

.field private sha1_mac:Ljava/lang/String;

.field private sha1_serial:Ljava/lang/String;

.field private sha1_udid:Ljava/lang/String;

.field private udid:Ljava/lang/String;

.field private udidFetched:Z

.field private userAgentManager:Lcom/amazon/device/ads/UserAgentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/amazon/device/ads/DeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DeviceInfo;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/UserAgentManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgentManager"    # Lcom/amazon/device/ads/UserAgentManager;

    .prologue
    .line 75
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/device/ads/DeviceInfo;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/UserAgentManager;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/UserAgentManager;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgentManager"    # Lcom/amazon/device/ads/UserAgentManager;
    .param p3, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p4, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->make:Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->model:Ljava/lang/String;

    .line 37
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/amazon/device/ads/DeviceInfo;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 80
    iput-object p3, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 81
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setCountry()V

    .line 82
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DeviceInfo;->setCarrier(Landroid/content/Context;)V

    .line 83
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setLanguage()V

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DeviceInfo;->setScalingFactor(Landroid/content/Context;)V

    .line 85
    iput-object p2, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    .line 86
    return-void
.end method

.method private setCarrier(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 246
    .local v1, "tManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "carrier":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .end local v0    # "carrier":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->carrier:Ljava/lang/String;

    .line 251
    :cond_0
    return-void

    .line 249
    .restart local v0    # "carrier":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCountry()V
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .end local v0    # "country":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->country:Ljava/lang/String;

    .line 236
    return-void

    .line 235
    .restart local v0    # "country":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLanguage()V
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .end local v0    # "language":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->language:Ljava/lang/String;

    .line 226
    return-void

    .line 225
    .restart local v0    # "language":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMacAddressIfNotFetched()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->macFetched:Z

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->setMacAddress()V

    .line 99
    :cond_0
    return-void
.end method

.method private setScalingFactor(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    iget-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->make:Ljava/lang/String;

    const-string v3, "motorola"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->model:Ljava/lang/String;

    const-string v3, "MB502"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactor:F

    .line 271
    :goto_0
    iget v2, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactor:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactorAsString:Ljava/lang/String;

    .line 272
    return-void

    .line 265
    :cond_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 266
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 267
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 268
    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v2, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactor:F

    goto :goto_0
.end method

.method private setSerial()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 162
    const/4 v2, 0x0

    .line 165
    .local v2, "serial":Ljava/lang/String;
    :try_start_0
    const-class v3, Landroid/os/Build;

    const-string v4, "SERIAL"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 166
    .local v1, "f":Ljava/lang/reflect/Field;
    const-class v3, Landroid/os/Build;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    :cond_0
    iput-boolean v5, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_serial:Z

    .line 189
    :goto_1
    iput-boolean v5, p0, Lcom/amazon/device/ads/DeviceInfo;->serialFetched:Z

    .line 190
    return-void

    .line 187
    :cond_1
    invoke-static {v2}, Lcom/amazon/device/ads/StringUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_serial:Ljava/lang/String;

    goto :goto_1

    .line 168
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private setSerialIfNotFetched()V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->serialFetched:Z

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setSerial()V

    .line 159
    :cond_0
    return-void
.end method

.method private setUdid()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 200
    iget-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "udid":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    :cond_0
    iput-object v5, p0, Lcom/amazon/device/ads/DeviceInfo;->udid:Ljava/lang/String;

    .line 206
    iput-object v5, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_udid:Ljava/lang/String;

    .line 207
    iput-boolean v4, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_udid:Z

    .line 214
    :goto_0
    iput-boolean v4, p0, Lcom/amazon/device/ads/DeviceInfo;->udidFetched:Z

    .line 215
    return-void

    .line 211
    :cond_1
    invoke-static {v1}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->udid:Ljava/lang/String;

    .line 212
    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_udid:Ljava/lang/String;

    goto :goto_0
.end method

.method private setUdidIfNotFetched()V
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->udidFetched:Z

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setUdid()V

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDInfoProperty()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 444
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 446
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "make"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getMake()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v1, "model"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v1, "os"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getOS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v1, "osVersion"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v1, "scalingFactor"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getScalingFactorAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "language"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v1, "country"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v1, "carrier"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, "android"

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMacMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setMacAddressIfNotFetched()V

    .line 303
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->md5_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMacSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setMacAddressIfNotFetched()V

    .line 298
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->make:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string v0, "Android"

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "orientation":Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/device/ads/DisplayUtils;->determineCanonicalScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 387
    .local v0, "canonicalOrientation":I
    sparse-switch v0, :sswitch_data_0

    .line 400
    const-string v1, "unknown"

    .line 402
    :goto_0
    return-object v1

    .line 391
    :sswitch_0
    const-string v1, "portrait"

    .line 392
    goto :goto_0

    .line 396
    :sswitch_1
    const-string v1, "landscape"

    .line 397
    goto :goto_0

    .line 387
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public getScalingFactorAsFloat()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactor:F

    return v0
.end method

.method public getScalingFactorAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactorAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize(Ljava/lang/String;)Lcom/amazon/device/ads/Size;
    .locals 6
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v4, "portrait"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/device/ads/DeviceInfo;->portraitScreenSize:Lcom/amazon/device/ads/Size;

    if-eqz v4, :cond_0

    .line 409
    iget-object v4, p0, Lcom/amazon/device/ads/DeviceInfo;->portraitScreenSize:Lcom/amazon/device/ads/Size;

    .line 434
    :goto_0
    return-object v4

    .line 411
    :cond_0
    const-string v4, "landscape"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amazon/device/ads/DeviceInfo;->landscapeScreenSize:Lcom/amazon/device/ads/Size;

    if-eqz v4, :cond_1

    .line 413
    iget-object v4, p0, Lcom/amazon/device/ads/DeviceInfo;->landscapeScreenSize:Lcom/amazon/device/ads/Size;

    goto :goto_0

    .line 416
    :cond_1
    iget-object v4, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v4}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 417
    .local v0, "context":Landroid/content/Context;
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 418
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 419
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "screenSize":Ljava/lang/String;
    const-string v4, "portrait"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 424
    new-instance v4, Lcom/amazon/device/ads/Size;

    invoke-direct {v4, v2}, Lcom/amazon/device/ads/Size;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/amazon/device/ads/DeviceInfo;->portraitScreenSize:Lcom/amazon/device/ads/Size;

    .line 425
    iget-object v4, p0, Lcom/amazon/device/ads/DeviceInfo;->portraitScreenSize:Lcom/amazon/device/ads/Size;

    goto :goto_0

    .line 427
    :cond_2
    const-string v4, "landscape"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 429
    new-instance v4, Lcom/amazon/device/ads/Size;

    invoke-direct {v4, v2}, Lcom/amazon/device/ads/Size;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/amazon/device/ads/DeviceInfo;->landscapeScreenSize:Lcom/amazon/device/ads/Size;

    .line 430
    iget-object v4, p0, Lcom/amazon/device/ads/DeviceInfo;->landscapeScreenSize:Lcom/amazon/device/ads/Size;

    goto :goto_0

    .line 434
    :cond_3
    new-instance v4, Lcom/amazon/device/ads/Size;

    invoke-direct {v4, v2}, Lcom/amazon/device/ads/Size;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSerialMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setSerialIfNotFetched()V

    .line 318
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->md5_serial:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setSerialIfNotFetched()V

    .line 313
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_serial:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setUdidIfNotFetched()V

    .line 328
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdidMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setUdidIfNotFetched()V

    .line 338
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->md5_udid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdidSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setUdidIfNotFetched()V

    .line 333
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_udid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    invoke-interface {v0}, Lcom/amazon/device/ads/UserAgentManager;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMacBad()Z
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setMacAddressIfNotFetched()V

    .line 308
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_mac:Z

    return v0
.end method

.method public isSerialBad()Z
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setSerialIfNotFetched()V

    .line 323
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_serial:Z

    return v0
.end method

.method public isUdidBad()Z
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setUdidIfNotFetched()V

    .line 343
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_udid:Z

    return v0
.end method

.method public populateUserAgentString(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/UserAgentManager;->populateUserAgentString(Landroid/content/Context;)V

    .line 381
    return-void
.end method

.method protected setMacAddress()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 102
    iget-object v7, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v7}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, "context":Landroid/content/Context;
    const-string v7, "wifi"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 105
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    .line 106
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 122
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 124
    iput-object v11, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    .line 151
    :goto_1
    iput-boolean v10, p0, Lcom/amazon/device/ads/DeviceInfo;->macFetched:Z

    .line 152
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v7, p0, Lcom/amazon/device/ads/DeviceInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v8, "Unable to get Wifi connection information: %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v1, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/ExceptionInInitializerError;
    iget-object v7, p0, Lcom/amazon/device/ads/DeviceInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v8, "Unable to get Wifi connection information: %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v1, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    .end local v1    # "e":Ljava/lang/ExceptionInInitializerError;
    :cond_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "macAddress":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 132
    :cond_2
    iput-object v11, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    .line 133
    iput-boolean v10, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_mac:Z

    goto :goto_1

    .line 137
    :cond_3
    const-string v7, "((([0-9a-fA-F]){1,2}[-:]){5}([0-9a-fA-F]){1,2})"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 138
    .local v3, "macAddressPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 139
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_4

    .line 142
    iput-object v11, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    .line 143
    iput-boolean v10, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_mac:Z

    goto :goto_1

    .line 147
    :cond_4
    invoke-static {v2}, Lcom/amazon/device/ads/StringUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    goto :goto_1
.end method

.method public setUserAgentManager(Lcom/amazon/device/ads/UserAgentManager;)V
    .locals 0
    .param p1, "userAgentManager"    # Lcom/amazon/device/ads/UserAgentManager;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    .line 91
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/UserAgentManager;->setUserAgentString(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getDInfoProperty()Lorg/json/JSONObject;

    move-result-object v1

    .line 476
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "orientation"

    invoke-static {v1, v2, p1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "screenSize"

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DeviceInfo;->getScreenSize(Ljava/lang/String;)Lcom/amazon/device/ads/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v0, Lcom/amazon/device/ads/ConnectionInfo;

    iget-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-direct {v0, v2}, Lcom/amazon/device/ads/ConnectionInfo;-><init>(Lcom/amazon/device/ads/MobileAdsInfoStore;)V

    .line 481
    .local v0, "connectionInfo":Lcom/amazon/device/ads/ConnectionInfo;
    const-string v2, "connectionType"

    invoke-virtual {v0}, Lcom/amazon/device/ads/ConnectionInfo;->getConnectionType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-object v1
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getOrientation()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "orientation":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DeviceInfo;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
