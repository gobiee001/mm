.class public Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
.super Ljava/lang/Object;
.source "PlacementAvailabilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$1;,
        Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    }
.end annotation


# instance fields
.field private cappingType:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

.field private cappingValue:I

.field private isCappingEnabled:Z

.field private isDeliveryEnabled:Z

.field private isPacingEnabled:Z

.field private pacingValue:I


# direct methods
.method private constructor <init>(ZZZLcom/supersonic/mediationsdk/model/PlacementCappingType;II)V
    .locals 0
    .param p1, "isDeliveryEnabled"    # Z
    .param p2, "isCappingEnabled"    # Z
    .param p3, "isPacingEnabled"    # Z
    .param p4, "cappingType"    # Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .param p5, "cappingValue"    # I
    .param p6, "pacingValue"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->isDeliveryEnabled:Z

    .line 18
    iput-boolean p2, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->isCappingEnabled:Z

    .line 19
    iput-boolean p3, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->isPacingEnabled:Z

    .line 20
    iput-object p4, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->cappingType:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    .line 21
    iput p5, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->cappingValue:I

    .line 22
    iput p6, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->pacingValue:I

    .line 23
    return-void
.end method

.method synthetic constructor <init>(ZZZLcom/supersonic/mediationsdk/model/PlacementCappingType;IILcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$1;

    .prologue
    .line 6
    invoke-direct/range {p0 .. p6}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;-><init>(ZZZLcom/supersonic/mediationsdk/model/PlacementCappingType;II)V

    return-void
.end method


# virtual methods
.method public getCappingType()Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->cappingType:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    return-object v0
.end method

.method public getCappingValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->cappingValue:I

    return v0
.end method

.method public getPacingValue()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->pacingValue:I

    return v0
.end method

.method public isCappingEnabled()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->isCappingEnabled:Z

    return v0
.end method

.method public isDeliveryEnabled()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->isDeliveryEnabled:Z

    return v0
.end method

.method public isPacingEnabled()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->isPacingEnabled:Z

    return v0
.end method
