.class public Lcom/amazon/device/ads/Configuration$ConfigOption;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigOption"
.end annotation


# static fields
.field public static final AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final AD_PREF_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;


# instance fields
.field private final allowEmpty:Z

.field private final dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final debugProperty:Ljava/lang/String;

.field private final responseKey:Ljava/lang/String;

.field private final settingsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 69
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-aaxHostname"

    const-class v2, Ljava/lang/String;

    const-string v3, "aaxHostname"

    const-string v4, "debug.aaxHostname"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 71
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-sisURL"

    const-class v2, Ljava/lang/String;

    const-string v3, "sisURL"

    const-string v4, "debug.sisURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 73
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-adPrefURL"

    const-class v2, Ljava/lang/String;

    const-string v3, "adPrefURL"

    const-string v4, "debug.adPrefURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_PREF_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 75
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-madsHostname"

    const-class v2, Ljava/lang/String;

    const-string v3, "madsHostname"

    const-string v4, "debug.madsHostname"

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 77
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-sisDomain"

    const-class v2, Ljava/lang/String;

    const-string v3, "sisDomain"

    const-string v4, "debug.sisDomain"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 79
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-sendGeo"

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "sendGeo"

    const-string v4, "debug.sendGeo"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 81
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-truncateLatLon"

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "truncateLatLon"

    const-string v4, "debug.truncateLatLon"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    sget-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_PREF_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsName"    # Ljava/lang/String;
    .param p3, "responseKey"    # Ljava/lang/String;
    .param p4, "debugProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "settingsName"    # Ljava/lang/String;
    .param p3, "responseKey"    # Ljava/lang/String;
    .param p4, "debugProperty"    # Ljava/lang/String;
    .param p5, "allowEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->settingsName:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->responseKey:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->dataType:Ljava/lang/Class;

    .line 115
    iput-object p4, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->debugProperty:Ljava/lang/String;

    .line 116
    iput-boolean p5, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->allowEmpty:Z

    .line 117
    return-void
.end method


# virtual methods
.method getAllowEmpty()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->allowEmpty:Z

    return v0
.end method

.method getDataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method getDebugProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->debugProperty:Ljava/lang/String;

    return-object v0
.end method

.method getResponseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->responseKey:Ljava/lang/String;

    return-object v0
.end method

.method getSettingsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->settingsName:Ljava/lang/String;

    return-object v0
.end method
