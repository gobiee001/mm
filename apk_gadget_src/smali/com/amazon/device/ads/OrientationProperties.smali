.class Lcom/amazon/device/ads/OrientationProperties;
.super Ljava/lang/Object;
.source "OrientationProperties.java"


# static fields
.field private static final FORMAT:Ljava/lang/String; = "{\"allowOrientationChange\":%s,\"forceOrientation\":\"%s\"}"


# instance fields
.field private allowOrientationChange:Ljava/lang/Boolean;

.field private forceOrientation:Lcom/amazon/device/ads/ForceOrientation;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    .line 19
    sget-object v0, Lcom/amazon/device/ads/ForceOrientation;->NONE:Lcom/amazon/device/ads/ForceOrientation;

    iput-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    return-void
.end method


# virtual methods
.method public getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    return-object v0
.end method

.method public isAllowOrientationChange()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAllowOrientationChange(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowOrientationChange"    # Ljava/lang/Boolean;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    .line 27
    return-void
.end method

.method public setForceOrientation(Lcom/amazon/device/ads/ForceOrientation;)V
    .locals 0
    .param p1, "forceOrientation"    # Lcom/amazon/device/ads/ForceOrientation;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 41
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "{\"allowOrientationChange\":%s,\"forceOrientation\":\"%s\"}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    invoke-virtual {v4}, Lcom/amazon/device/ads/ForceOrientation;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
