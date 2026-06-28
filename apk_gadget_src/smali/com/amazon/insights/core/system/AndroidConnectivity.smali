.class public Lcom/amazon/insights/core/system/AndroidConnectivity;
.super Ljava/lang/Object;
.source "AndroidConnectivity.java"

# interfaces
.implements Lcom/amazon/insights/core/system/Connectivity;


# static fields
.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field protected hasMobile:Z

.field protected hasWifi:Z

.field protected hasWired:Z

.field protected inAirplaneMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/amazon/insights/core/system/Connectivity;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/core/system/AndroidConnectivity;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private determineAvailability()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 58
    iget-object v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->context:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->inAirplaneMode:Z

    .line 60
    sget-object v3, Lcom/amazon/insights/core/system/AndroidConnectivity;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Airplane mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->inAirplaneMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 61
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 62
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    :goto_1
    const/4 v2, 0x0

    .line 64
    .local v2, "networkType":I
    iput-boolean v5, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi:Z

    .line 65
    iput-boolean v5, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWired:Z

    .line 67
    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    .line 69
    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 71
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 74
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v3, v6, :cond_0

    .line 75
    const/16 v3, 0x9

    if-ne v2, v3, :cond_7

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWired:Z

    .line 78
    :cond_0
    if-eq v2, v4, :cond_1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    :cond_1
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi:Z

    .line 80
    if-eqz v2, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    :cond_2
    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    .line 91
    :cond_3
    :goto_6
    sget-object v6, Lcom/amazon/insights/core/system/AndroidConnectivity;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v7, "Device Connectivity (%s)"

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi:Z

    if-eqz v3, :cond_b

    const-string v3, "On Wifi"

    :goto_7
    aput-object v3, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 92
    return-void

    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "networkType":I
    :cond_4
    move v3, v5

    .line 59
    goto :goto_0

    .line 61
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "networkType":I
    :cond_6
    move v3, v5

    .line 67
    goto :goto_2

    :cond_7
    move v3, v5

    .line 75
    goto :goto_3

    :cond_8
    move v3, v5

    .line 78
    goto :goto_4

    :cond_9
    move v3, v5

    .line 80
    goto :goto_5

    .line 88
    :cond_a
    iput-boolean v5, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    goto :goto_6

    .line 91
    :cond_b
    iget-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    if-eqz v3, :cond_c

    const-string v3, "On Mobile"

    goto :goto_7

    :cond_c
    const-string v3, "No network connectivity"

    goto :goto_7
.end method


# virtual methods
.method public hasWAN()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->inAirplaneMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWifi()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi:Z

    return v0
.end method

.method public hasWired()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWired:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/amazon/insights/core/system/AndroidConnectivity;->determineAvailability()V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWAN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
