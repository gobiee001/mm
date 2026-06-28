.class public Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;
.super Ljava/lang/Object;
.source "OverlaySessionInformation.java"


# instance fields
.field final applicationName:Ljava/lang/String;

.field final clientVersion:Ljava/lang/String;

.field final contentVersion:Ljava/lang/String;

.field final deviceInfo:Lcom/amazon/ags/html5/util/DeviceInfo;

.field final gameCircleVersion:Ljava/lang/String;

.field final localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/html5/util/LocalizationUtil;Lcom/amazon/ags/html5/util/DeviceInfo;)V
    .locals 0
    .param p1, "gameCircleVersion"    # Ljava/lang/String;
    .param p2, "clientVersion"    # Ljava/lang/String;
    .param p3, "contentVersion"    # Ljava/lang/String;
    .param p4, "applicationName"    # Ljava/lang/String;
    .param p5, "localizationUtil"    # Lcom/amazon/ags/html5/util/LocalizationUtil;
    .param p6, "deviceInfo"    # Lcom/amazon/ags/html5/util/DeviceInfo;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->gameCircleVersion:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->clientVersion:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->contentVersion:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->applicationName:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    .line 25
    iput-object p6, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->deviceInfo:Lcom/amazon/ags/html5/util/DeviceInfo;

    .line 26
    return-void
.end method


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getContentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->contentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/amazon/ags/html5/util/DeviceInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->deviceInfo:Lcom/amazon/ags/html5/util/DeviceInfo;

    return-object v0
.end method

.method public getGameCircleVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->gameCircleVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizationUtil()Lcom/amazon/ags/html5/util/LocalizationUtil;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    return-object v0
.end method
