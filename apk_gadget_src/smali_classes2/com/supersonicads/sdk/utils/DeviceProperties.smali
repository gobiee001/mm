.class public Lcom/supersonicads/sdk/utils/DeviceProperties;
.super Ljava/lang/Object;
.source "DeviceProperties.java"


# static fields
.field private static mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;


# instance fields
.field private mDeviceCarrier:Ljava/lang/String;

.field private mDeviceModel:Ljava/lang/String;

.field private mDeviceOem:Ljava/lang/String;

.field private mDeviceOsType:Ljava/lang/String;

.field private mDeviceOsVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->getDeviceOEM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOem:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceModel:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->getDeviceOs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOsType:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->getAndroidAPIVersion()I

    move-result v0

    iput v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOsVersion:I

    .line 25
    invoke-static {p1}, Lcom/supersonic/environment/DeviceStatus;->getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceCarrier:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/supersonicads/sdk/utils/DeviceProperties;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/utils/DeviceProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;

    .line 32
    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mInstance:Lcom/supersonicads/sdk/utils/DeviceProperties;

    return-object v0
.end method

.method public static getSupersonicSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "5.31"

    return-object v0
.end method


# virtual methods
.method public getDeviceCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOem:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOsType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/supersonicads/sdk/utils/DeviceProperties;->mDeviceOsVersion:I

    return v0
.end method

.method public getDeviceVolume(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p1}, Lcom/supersonic/environment/DeviceStatus;->getSystemVolumePercent(Landroid/content/Context;)F

    move-result v0

    return v0
.end method
