.class public final Lcom/inmobi/signals/b/b;
.super Ljava/lang/Object;
.source "WifiInfoUtil.java"


# direct methods
.method static a(Ljava/lang/String;)J
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v6, 0x6

    const/4 v1, 0x0

    const-wide/16 v8, 0xff

    .line 97
    const-string v0, "\\:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    new-array v3, v6, [B

    move v0, v1

    .line 100
    :goto_0
    if-ge v0, v6, :cond_0

    .line 102
    :try_start_0
    aget-object v4, v2, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    .line 108
    :goto_1
    return-wide v0

    .line 4115
    :cond_0
    const/4 v0, 0x5

    aget-byte v0, v3, v0

    .line 4127
    int-to-long v4, v0

    and-long/2addr v4, v8

    .line 4116
    const/4 v0, 0x4

    aget-byte v0, v3, v0

    .line 5127
    int-to-long v6, v0

    and-long/2addr v6, v8

    .line 4116
    const/16 v0, 0x8

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    .line 4117
    const/4 v0, 0x3

    aget-byte v0, v3, v0

    .line 6127
    int-to-long v6, v0

    and-long/2addr v6, v8

    .line 4117
    shl-long/2addr v6, v10

    or-long/2addr v4, v6

    .line 4118
    const/4 v0, 0x2

    aget-byte v0, v3, v0

    .line 7127
    int-to-long v6, v0

    and-long/2addr v6, v8

    .line 4118
    const/16 v0, 0x18

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    .line 4119
    const/4 v0, 0x1

    aget-byte v0, v3, v0

    .line 8127
    int-to-long v6, v0

    and-long/2addr v6, v8

    .line 4119
    const/16 v0, 0x20

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    .line 4120
    aget-byte v0, v3, v1

    .line 9127
    int-to-long v0, v0

    and-long/2addr v0, v8

    .line 4120
    const/16 v2, 0x28

    shl-long/2addr v0, v2

    or-long/2addr v0, v4

    .line 108
    goto :goto_1
.end method

.method public static a()Lcom/inmobi/signals/b/a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1057
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    const-string v3, "signals"

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 26
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v2

    .line 1081
    iget-object v2, v2, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 1167
    iget-object v2, v2, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 1240
    iget-boolean v3, v2, Lcom/inmobi/signals/p$b;->l:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lcom/inmobi/signals/p$b;->a:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 26
    :cond_0
    if-nez v0, :cond_3

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_1
    return-object v0

    :cond_2
    move v2, v0

    .line 1057
    goto :goto_0

    .line 31
    :cond_3
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    .line 2081
    iget-object v0, v0, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 2167
    iget-object v0, v0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 2232
    iget v0, v0, Lcom/inmobi/signals/p$b;->j:I

    .line 32
    invoke-static {v0}, Lcom/inmobi/signals/b/b;->a(I)Z

    move-result v2

    .line 3053
    invoke-static {v0, v1}, Lcom/inmobi/signals/b/b;->a(II)Z

    move-result v0

    .line 34
    invoke-static {v2, v0}, Lcom/inmobi/signals/b/b;->a(ZZ)Lcom/inmobi/signals/b/a;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(ZZ)Lcom/inmobi/signals/b/a;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-object v1

    .line 67
    :cond_0
    :try_start_0
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 68
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 73
    if-eqz v4, :cond_3

    invoke-static {p0, v2}, Lcom/inmobi/signals/b/b;->a(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    new-instance v0, Lcom/inmobi/signals/b/a;

    invoke-direct {v0}, Lcom/inmobi/signals/b/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    invoke-static {v4}, Lcom/inmobi/signals/b/b;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 4024
    iput-wide v4, v0, Lcom/inmobi/signals/b/a;->a:J

    .line 76
    if-eqz v2, :cond_1

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 79
    :cond_1
    if-eqz p1, :cond_2

    .line 4028
    :goto_1
    iput-object v1, v0, Lcom/inmobi/signals/b/a;->b:Ljava/lang/String;

    .line 80
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 4032
    iput v1, v0, Lcom/inmobi/signals/b/a;->c:I

    .line 81
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 4036
    iput v1, v0, Lcom/inmobi/signals/b/a;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    .line 87
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 79
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 85
    :goto_3
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_2

    .line 84
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static a(I)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/inmobi/signals/b/b;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(II)Z
    .locals 1

    .prologue
    .line 131
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(ZLjava/lang/String;)Z
    .locals 1

    .prologue
    .line 91
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "_nomap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
