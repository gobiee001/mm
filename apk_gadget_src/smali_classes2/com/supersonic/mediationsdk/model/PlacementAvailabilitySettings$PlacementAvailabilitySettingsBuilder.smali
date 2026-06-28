.class public Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
.super Ljava/lang/Object;
.source "PlacementAvailabilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlacementAvailabilitySettingsBuilder"
.end annotation


# instance fields
.field private cappingType:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

.field private cappingValue:I

.field private isCappingEnabled:Z

.field private isDeliveryEnabled:Z

.field private isPacingEnabled:Z

.field private pacingValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isDeliveryEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isCappingEnabled:Z

    .line 52
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isPacingEnabled:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingType:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    .line 54
    iput v1, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingValue:I

    .line 55
    iput v1, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacingValue:I

    .line 59
    return-void
.end method


# virtual methods
.method public build()Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    .locals 8

    .prologue
    .line 80
    new-instance v0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;

    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isDeliveryEnabled:Z

    iget-boolean v2, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isCappingEnabled:Z

    iget-boolean v3, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isPacingEnabled:Z

    iget-object v4, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingType:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    iget v5, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingValue:I

    iget v6, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacingValue:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;-><init>(ZZZLcom/supersonic/mediationsdk/model/PlacementCappingType;IILcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$1;)V

    return-object v0
.end method

.method public capping(ZLcom/supersonic/mediationsdk/model/PlacementCappingType;I)Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    .locals 0
    .param p1, "isCappingEnabled"    # Z
    .param p2, "cappingType"    # Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .param p3, "cappingValue"    # I

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isCappingEnabled:Z

    .line 68
    if-nez p2, :cond_0

    sget-object p2, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    .end local p2    # "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    :cond_0
    iput-object p2, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingType:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    .line 69
    iput p3, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingValue:I

    .line 70
    return-object p0
.end method

.method public delivery(Z)Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    .locals 0
    .param p1, "isDeliveryEnabled"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isDeliveryEnabled:Z

    .line 63
    return-object p0
.end method

.method public pacing(ZI)Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    .locals 0
    .param p1, "isPacingEnabled"    # Z
    .param p2, "pacingValue"    # I

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isPacingEnabled:Z

    .line 75
    iput p2, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacingValue:I

    .line 76
    return-object p0
.end method
