.class Lcom/amazon/device/ads/DebugProperties;
.super Ljava/lang/Object;
.source "DebugProperties.java"


# static fields
.field public static final DEBUG_AAX_AD_HOSTNAME:Ljava/lang/String; = "debug.aaxHostname"

.field public static final DEBUG_AAX_AD_PARAMS:Ljava/lang/String; = "debug.aaxAdParams"

.field public static final DEBUG_AAX_CONFIG_HOSTNAME:Ljava/lang/String; = "debug.aaxConfigHostname"

.field public static final DEBUG_AAX_CONFIG_PARAMS:Ljava/lang/String; = "debug.aaxConfigParams"

.field public static final DEBUG_AAX_CONFIG_USE_SECURE:Ljava/lang/String; = "debug.aaxConfigUseSecure"

.field public static final DEBUG_ADID:Ljava/lang/String; = "debug.adid"

.field public static final DEBUG_AD_PREF_URL:Ljava/lang/String; = "debug.adPrefURL"

.field public static final DEBUG_APPID:Ljava/lang/String; = "debug.appid"

.field public static final DEBUG_CAN_TIMEOUT:Ljava/lang/String; = "debug.canTimeout"

.field public static final DEBUG_CHANNEL:Ljava/lang/String; = "debug.channel"

.field public static final DEBUG_CONFIG_FEATURE_USE_GPS_ADVERTISING_ID:Ljava/lang/String; = "debug.fUseGPSAID"

.field public static final DEBUG_DINFO:Ljava/lang/String; = "debug.dinfo"

.field public static final DEBUG_ECPM:Ljava/lang/String; = "debug.ec"

.field public static final DEBUG_GEOLOC:Ljava/lang/String; = "debug.geoloc"

.field public static final DEBUG_IDFA:Ljava/lang/String; = "debug.idfa"

.field public static final DEBUG_LOGGING:Ljava/lang/String; = "debug.logging"

.field public static final DEBUG_MADS_HOSTNAME:Ljava/lang/String; = "debug.madsHostname"

.field public static final DEBUG_MADS_USE_SECURE:Ljava/lang/String; = "debug.madsUseSecure"

.field public static final DEBUG_MD5UDID:Ljava/lang/String; = "debug.md5udid"

.field public static final DEBUG_MXSZ:Ljava/lang/String; = "debug.mxsz"

.field public static final DEBUG_NORETRYTTL:Ljava/lang/String; = "debug.noRetryTTL"

.field public static final DEBUG_NORETRYTTL_MAX:Ljava/lang/String; = "debug.noRetryTTLMax"

.field public static final DEBUG_ON:Ljava/lang/String; = "debug.mode"

.field public static final DEBUG_OPT_OUT:Ljava/lang/String; = "debug.optOut"

.field public static final DEBUG_PA:Ljava/lang/String; = "debug.pa"

.field public static final DEBUG_PK:Ljava/lang/String; = "debug.pk"

.field public static final DEBUG_PKG:Ljava/lang/String; = "debug.pkg"

.field public static final DEBUG_PT:Ljava/lang/String; = "debug.pt"

.field public static final DEBUG_SEND_GEO:Ljava/lang/String; = "debug.sendGeo"

.field public static final DEBUG_SHA1UDID:Ljava/lang/String; = "debug.sha1udid"

.field public static final DEBUG_SHOULD_FETCH_CONFIG:Ljava/lang/String; = "debug.shouldFetchConfig"

.field public static final DEBUG_SHOULD_IDENTIFY_USER:Ljava/lang/String; = "debug.shouldIdentifyUser"

.field public static final DEBUG_SHOULD_REGISTER_SIS:Ljava/lang/String; = "debug.shouldRegisterSIS"

.field public static final DEBUG_SIS_DOMAIN:Ljava/lang/String; = "debug.sisDomain"

.field public static final DEBUG_SIS_URL:Ljava/lang/String; = "debug.sisURL"

.field public static final DEBUG_SIZE:Ljava/lang/String; = "debug.size"

.field public static final DEBUG_SLOT:Ljava/lang/String; = "debug.slot"

.field public static final DEBUG_SLOTS:Ljava/lang/String; = "debug.slots"

.field public static final DEBUG_SLOT_ID:Ljava/lang/String; = "debug.slotId"

.field public static final DEBUG_SP:Ljava/lang/String; = "debug.sp"

.field public static final DEBUG_SUPPORTED_MEDIA_TYPES:Ljava/lang/String; = "debug.supportedMediaTypes"

.field public static final DEBUG_TEST:Ljava/lang/String; = "debug.test"

.field public static final DEBUG_TLS_ENABLED:Ljava/lang/String; = "debug.tlsEnabled"

.field public static final DEBUG_TRUNCATE_LAT_LON:Ljava/lang/String; = "debug.truncateLatLon"

.field public static final DEBUG_UA:Ljava/lang/String; = "debug.ua"

.field public static final DEBUG_VER:Ljava/lang/String; = "debug.ver"

.field public static final DEBUG_VIDEO_OPTIONS:Ljava/lang/String; = "debug.videoOptions"

.field public static final DEBUG_WEBVIEWS:Ljava/lang/String; = "debug.webViews"

.field private static final FILE_PREFIX:Ljava/lang/String; = "/com.amazon.device.ads.debug"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final instance:Lcom/amazon/device/ads/DebugProperties;

.field private static final privExponent:Ljava/math/BigInteger;

.field private static final privModulus:Ljava/math/BigInteger;


# instance fields
.field private debugModeOn:Z

.field private final debugProperties:Ljava/util/Properties;

.field private final fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/amazon/device/ads/DebugProperties;

    new-instance v1, Lcom/amazon/device/ads/DefaultFileHandlerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/DefaultFileHandlerFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DebugProperties;-><init>(Lcom/amazon/device/ads/FileHandlerFactory;)V

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->instance:Lcom/amazon/device/ads/DebugProperties;

    .line 25
    const-class v0, Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->LOGTAG:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "22425945969293236512819607281747202268852113345956851069545419503178249900977203670147638322801582881051882957295768557918356441519366172126884608406316888515239296504501830280664879549133570276792155151832332847188532369002492210234019359186842709493620665119919750832332220777141369255943445578381285984064028865613478676828533273460580467686485184132743895959747097454385452868408957601246667523882372216446056029831689133478714597838700864119273209955182548633182248700235085802575904827859971001196599005060045450779595767759943984991630413046800554347791145167910883355627096118148593841261053098773337592734097"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->privModulus:Ljava/math/BigInteger;

    .line 88
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "5599215006722084151841970702827860151139465197978118529242591197804380779249736540498127864809226859371835159226553869008622098243456195347852554241917744888762998133926842072150379542281041403163862165638226686887497980590930009552760406707269286898150890998325325890252103828011111664174475487114957696526157790937869377570600085450453371238028811033168218737171144699577236108423054506552958366535341910569552237227686862748056351625445281035713423043506793107235726047151346608576583081807969458368853010104969843563629579750936551771756389538574062221915919980316992216032119182896925094308799622409361028579777"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->privExponent:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/FileHandlerFactory;)V
    .locals 2
    .param p1, "fileHandlerFactory"    # Lcom/amazon/device/ads/FileHandlerFactory;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    .line 101
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/DebugProperties;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 105
    iput-object p1, p0, Lcom/amazon/device/ads/DebugProperties;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    .line 106
    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/DebugProperties;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->instance:Lcom/amazon/device/ads/DebugProperties;

    return-object v0
.end method


# virtual methods
.method public containsDebugProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected decrypt([B)[B
    .locals 9
    .param p1, "data"    # [B

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 278
    .local v1, "decryptedData":[B
    :try_start_0
    new-instance v5, Ljava/security/spec/RSAPrivateKeySpec;

    sget-object v6, Lcom/amazon/device/ads/DebugProperties;->privModulus:Ljava/math/BigInteger;

    sget-object v7, Lcom/amazon/device/ads/DebugProperties;->privExponent:Ljava/math/BigInteger;

    invoke-direct {v5, v6, v7}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 279
    .local v5, "keySpec":Ljava/security/spec/RSAPrivateKeySpec;
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 280
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 282
    .local v3, "key":Ljava/security/PrivateKey;
    const-string v6, "RSA"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 283
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 284
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 291
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "key":Ljava/security/PrivateKey;
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "keySpec":Ljava/security/spec/RSAPrivateKeySpec;
    :goto_0
    return-object v1

    .line 286
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " trying to decrypt debug file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method disableDebugging()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    .line 307
    return-void
.end method

.method enableDebugging()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    .line 302
    return-void
.end method

.method public getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 202
    iget-boolean v2, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v2, :cond_1

    .line 222
    .end local p2    # "defaultValue":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-object p2

    .line 208
    .restart local p2    # "defaultValue":Ljava/lang/Boolean;
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "propertyValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 217
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Unable to parse boolean debug property - property: %s, value: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 6
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 174
    iget-boolean v2, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v2, :cond_1

    .line 194
    .end local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object p2

    .line 180
    .restart local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "propertyValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 189
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Unable to parse integer debug property - property: %s, value: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDebugPropertyAsLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 230
    iget-boolean v2, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v2, :cond_1

    .line 250
    .end local p2    # "defaultValue":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-object p2

    .line 236
    .restart local p2    # "defaultValue":Ljava/lang/Long;
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "propertyValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 245
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Unable to parse long debug property - property: %s, value: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v0, :cond_0

    .line 169
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public isDebugModeOn()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    return v0
.end method

.method public readDebugProperties()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 115
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "storageState":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/com.amazon.device.ads.debug"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "filename":Ljava/lang/String;
    iget-object v8, p0, Lcom/amazon/device/ads/DebugProperties;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    invoke-interface {v8, v6}, Lcom/amazon/device/ads/FileHandlerFactory;->createFileInputHandler(Ljava/lang/String;)Lcom/amazon/device/ads/FileInputHandler;

    move-result-object v5

    .line 120
    .local v5, "fileInputHandler":Lcom/amazon/device/ads/FileInputHandler;
    invoke-virtual {v5}, Lcom/amazon/device/ads/FileInputHandler;->doesFileExist()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/amazon/device/ads/FileInputHandler;->getFileLength()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 162
    .end local v5    # "fileInputHandler":Lcom/amazon/device/ads/FileInputHandler;
    .end local v6    # "filename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v5    # "fileInputHandler":Lcom/amazon/device/ads/FileInputHandler;
    .restart local v6    # "filename":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Lcom/amazon/device/ads/FileInputHandler;->readAllBytesFromFileAndClose()[B

    move-result-object v1

    .line 126
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/DebugProperties;->decrypt([B)[B

    move-result-object v3

    .line 129
    .local v3, "decrypted":[B
    if-eqz v3, :cond_0

    .line 131
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 134
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    iget-object v8, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v8}, Ljava/util/Properties;->clear()V

    .line 137
    :try_start_0
    iget-object v8, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v8, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_1
    iget-object v8, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    const-string v9, "debug.mode"

    const-string v10, "false"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "debug":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 157
    iput-boolean v13, p0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    goto :goto_0

    .line 149
    .end local v2    # "debug":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 151
    .local v4, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v9, "Exception closing input stream."

    invoke-virtual {v8, v9}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 141
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_2
    iget-object v8, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v9, "Exception loading debug properties. %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 149
    :catch_2
    move-exception v4

    .line 151
    iget-object v8, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v9, "Exception closing input stream."

    invoke-virtual {v8, v9}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 147
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 152
    :goto_2
    throw v8

    .line 149
    :catch_3
    move-exception v4

    .line 151
    .restart local v4    # "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v10, "Exception closing input stream."

    invoke-virtual {v9, v10}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method setDebugProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void
.end method
