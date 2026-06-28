.class final Lcom/inmobi/signals/b/c$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {}, Lcom/inmobi/signals/b/c;->b()Lcom/inmobi/signals/b/c$a;

    move-result-object v4

    .line 94
    invoke-static {}, Lcom/inmobi/signals/b/c;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 95
    invoke-static {}, Lcom/inmobi/signals/b/c;->c()V

    .line 96
    if-eqz v4, :cond_3

    .line 97
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 1150
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v1

    .line 2081
    iget-object v1, v1, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 2167
    iget-object v1, v1, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 2232
    iget v1, v1, Lcom/inmobi/signals/p$b;->j:I

    .line 1151
    invoke-static {v1}, Lcom/inmobi/signals/b/b;->a(I)Z

    move-result v5

    .line 3053
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/inmobi/signals/b/b;->a(II)Z

    move-result v6

    .line 1153
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    if-eqz v0, :cond_2

    .line 1156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1157
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/inmobi/signals/b/b;->a(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3169
    if-eqz v0, :cond_4

    .line 3170
    new-instance v3, Lcom/inmobi/signals/b/a;

    invoke-direct {v3}, Lcom/inmobi/signals/b/a;-><init>()V

    .line 3171
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/signals/b/b;->a(Ljava/lang/String;)J

    move-result-wide v10

    .line 4024
    iput-wide v10, v3, Lcom/inmobi/signals/b/a;->a:J

    .line 3172
    if-eqz v6, :cond_1

    move-object v1, v2

    .line 4028
    :goto_1
    iput-object v1, v3, Lcom/inmobi/signals/b/a;->b:Ljava/lang/String;

    .line 3173
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 4032
    iput v0, v3, Lcom/inmobi/signals/b/a;->c:I

    move-object v0, v3

    .line 1160
    :goto_2
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3172
    :cond_1
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_2
    invoke-static {v7}, Lcom/inmobi/signals/b/c;->a(Ljava/util/List;)Ljava/util/List;

    .line 98
    invoke-static {}, Lcom/inmobi/signals/b/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/inmobi/signals/b/c$a;->a(Ljava/util/List;)V

    .line 100
    :cond_3
    return-void

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method
