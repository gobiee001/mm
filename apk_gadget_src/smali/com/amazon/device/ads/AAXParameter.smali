.class abstract Lcom/amazon/device/ads/AAXParameter;
.super Ljava/lang/Object;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;,
        Lcom/amazon/device/ads/AAXParameter$VideoOptionsParameter;,
        Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;,
        Lcom/amazon/device/ads/AAXParameter$FloorPriceParameter;,
        Lcom/amazon/device/ads/AAXParameter$SlotIdParameter;,
        Lcom/amazon/device/ads/AAXParameter$MaxSizeParameter;,
        Lcom/amazon/device/ads/AAXParameter$SlotParameter;,
        Lcom/amazon/device/ads/AAXParameter$SizeParameter;,
        Lcom/amazon/device/ads/AAXParameter$OptOutParameter;,
        Lcom/amazon/device/ads/AAXParameter$AdvertisingIdentifierParameter;,
        Lcom/amazon/device/ads/AAXParameter$MD5UDIDParameter;,
        Lcom/amazon/device/ads/AAXParameter$SHA1UDIDParameter;,
        Lcom/amazon/device/ads/AAXParameter$SISDeviceIdentifierParameter;,
        Lcom/amazon/device/ads/AAXParameter$TestParameter;,
        Lcom/amazon/device/ads/AAXParameter$PackageInfoParameter;,
        Lcom/amazon/device/ads/AAXParameter$DeviceInfoParameter;,
        Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;,
        Lcom/amazon/device/ads/AAXParameter$SDKVersionParameter;,
        Lcom/amazon/device/ads/AAXParameter$UserAgentParameter;,
        Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;,
        Lcom/amazon/device/ads/AAXParameter$AppKeyParameter;,
        Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;,
        Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;,
        Lcom/amazon/device/ads/AAXParameter$LongParameter;,
        Lcom/amazon/device/ads/AAXParameter$IntegerParameter;,
        Lcom/amazon/device/ads/AAXParameter$BooleanParameter;,
        Lcom/amazon/device/ads/AAXParameter$StringParameter;,
        Lcom/amazon/device/ads/AAXParameter$ParameterData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ADVERTISING_IDENTIFIER:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final APP_KEY:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final CHANNEL:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_INFO:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field static final FLOOR_PRICE:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final GEOLOCATION:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String;

.field static final MAX_SIZE:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final MD5_UDID:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final OPT_OUT:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final PACKAGE_INFO:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field static final PAGE_TYPE:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PUBLISHER_ASINS:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field static final PUBLISHER_KEYWORDS:Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;

.field static final SDK_VERSION:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SHA1_UDID:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SIS_DEVICE_IDENTIFIER:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SIZE:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SLOT:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SLOTS:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field static final SLOT_ID:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final SLOT_POSITION:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SUPPORTED_MEDIA_TYPES:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field static final TEST:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final USER_AGENT:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final VIDEO_OPTIONS:Lcom/amazon/device/ads/AAXParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/ads/AAXParameter",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final debugName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lcom/amazon/device/ads/AAXParameter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->LOGTAG:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$AppKeyParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$AppKeyParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->APP_KEY:Lcom/amazon/device/ads/AAXParameter;

    .line 155
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$StringParameter;

    const-string v1, "c"

    const-string v2, "debug.channel"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->CHANNEL:Lcom/amazon/device/ads/AAXParameter;

    .line 156
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->PUBLISHER_KEYWORDS:Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;

    .line 157
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;

    const-string v1, "pa"

    const-string v2, "debug.pa"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->PUBLISHER_ASINS:Lcom/amazon/device/ads/AAXParameter;

    .line 158
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$UserAgentParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$UserAgentParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->USER_AGENT:Lcom/amazon/device/ads/AAXParameter;

    .line 159
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$SDKVersionParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$SDKVersionParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->SDK_VERSION:Lcom/amazon/device/ads/AAXParameter;

    .line 160
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->GEOLOCATION:Lcom/amazon/device/ads/AAXParameter;

    .line 161
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$DeviceInfoParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$DeviceInfoParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->DEVICE_INFO:Lcom/amazon/device/ads/AAXParameter;

    .line 162
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$PackageInfoParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$PackageInfoParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->PACKAGE_INFO:Lcom/amazon/device/ads/AAXParameter;

    .line 163
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$TestParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$TestParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->TEST:Lcom/amazon/device/ads/AAXParameter;

    .line 164
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$SISDeviceIdentifierParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$SISDeviceIdentifierParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->SIS_DEVICE_IDENTIFIER:Lcom/amazon/device/ads/AAXParameter;

    .line 165
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$SHA1UDIDParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$SHA1UDIDParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->SHA1_UDID:Lcom/amazon/device/ads/AAXParameter;

    .line 166
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$MD5UDIDParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$MD5UDIDParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->MD5_UDID:Lcom/amazon/device/ads/AAXParameter;

    .line 167
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;

    const-string v1, "slots"

    const-string v2, "debug.slots"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->SLOTS:Lcom/amazon/device/ads/AAXParameter;

    .line 168
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$AdvertisingIdentifierParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$AdvertisingIdentifierParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->ADVERTISING_IDENTIFIER:Lcom/amazon/device/ads/AAXParameter;

    .line 169
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$OptOutParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$OptOutParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->OPT_OUT:Lcom/amazon/device/ads/AAXParameter;

    .line 170
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$SizeParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$SizeParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->SIZE:Lcom/amazon/device/ads/AAXParameter;

    .line 171
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$StringParameter;

    const-string v1, "pt"

    const-string v2, "debug.pt"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->PAGE_TYPE:Lcom/amazon/device/ads/AAXParameter;

    .line 172
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$SlotParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$SlotParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->SLOT:Lcom/amazon/device/ads/AAXParameter;

    .line 173
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$StringParameter;

    const-string v1, "sp"

    const-string v2, "debug.sp"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->SLOT_POSITION:Lcom/amazon/device/ads/AAXParameter;

    .line 174
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$MaxSizeParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$MaxSizeParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->MAX_SIZE:Lcom/amazon/device/ads/AAXParameter;

    .line 175
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$SlotIdParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$SlotIdParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->SLOT_ID:Lcom/amazon/device/ads/AAXParameter;

    .line 176
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$FloorPriceParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$FloorPriceParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->FLOOR_PRICE:Lcom/amazon/device/ads/AAXParameter;

    .line 177
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$SupportedMediaTypesParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->SUPPORTED_MEDIA_TYPES:Lcom/amazon/device/ads/AAXParameter;

    .line 178
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$VideoOptionsParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AAXParameter$VideoOptionsParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameter;->VIDEO_OPTIONS:Lcom/amazon/device/ads/AAXParameter;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "debugName"    # Ljava/lang/String;

    .prologue
    .line 35
    .local p0, "this":Lcom/amazon/device/ads/AAXParameter;, "Lcom/amazon/device/ads/AAXParameter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/device/ads/AAXParameter;->debugName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/amazon/device/ads/AAXParameter;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected applyPostParameterProcessing(Ljava/lang/Object;Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0
    .param p2, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/device/ads/AAXParameter$ParameterData;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/amazon/device/ads/AAXParameter;, "Lcom/amazon/device/ads/AAXParameter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method protected getDebugName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/amazon/device/ads/AAXParameter;, "Lcom/amazon/device/ads/AAXParameter<TT;>;"
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter;->debugName:Ljava/lang/String;

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1
    .param p1, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AAXParameter$ParameterData;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/amazon/device/ads/AAXParameter;, "Lcom/amazon/device/ads/AAXParameter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getFromDebugProperties()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/amazon/device/ads/AAXParameter;, "Lcom/amazon/device/ads/AAXParameter<TT;>;"
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method getValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 4
    .param p1, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AAXParameter$ParameterData;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/amazon/device/ads/AAXParameter;, "Lcom/amazon/device/ads/AAXParameter<TT;>;"
    const/4 v1, 0x0

    .line 61
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter;->hasDebugPropertiesValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter;->getFromDebugProperties()Ljava/lang/Object;

    move-result-object v1

    .line 74
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/amazon/device/ads/AAXParameter;->applyPostParameterProcessing(Ljava/lang/Object;Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 79
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v1

    .line 65
    .restart local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AAXParameter;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AAXParameter;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "advancedOption":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AAXParameter;->parseFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    goto :goto_0

    .line 72
    .end local v0    # "advancedOption":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected hasDebugPropertiesValue()Z
    .locals 2

    .prologue
    .line 50
    .local p0, "this":Lcom/amazon/device/ads/AAXParameter;, "Lcom/amazon/device/ads/AAXParameter<TT;>;"
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter;->debugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->containsDebugProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
