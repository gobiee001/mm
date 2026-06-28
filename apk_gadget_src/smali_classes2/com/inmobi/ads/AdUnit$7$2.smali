.class final Lcom/inmobi/ads/AdUnit$7$2;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Lcom/inmobi/ads/ac$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit$7;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$7;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 1045
    if-eqz v0, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    const-string v2, "TrueAdViewFailedToBuild"

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/AdUnit;->d(Ljava/lang/String;)V

    .line 1047
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->c()V

    .line 1051
    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->g()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1154
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 1113
    if-eqz v0, :cond_0

    .line 1114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->b(Ljava/util/Map;)V

    .line 1118
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->g()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    const-string v1, "AdRendered"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/AdUnit$7$2$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$7$2$1;-><init>(Lcom/inmobi/ads/AdUnit$7$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1062
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 1067
    if-eqz v0, :cond_0

    .line 1068
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->d()V

    .line 1072
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->g()V

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 1076
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully impressed ad for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v3, v3, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 1269
    iget-wide v4, v3, Lcom/inmobi/ads/AdUnit;->b:J

    .line 1077
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 1079
    if-eqz v0, :cond_0

    .line 1080
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->h()V

    .line 1084
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->g()V

    goto :goto_0
.end method

.method public final e()V
    .locals 6

    .prologue
    .line 1088
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad interaction for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v3, v3, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 2269
    iget-wide v4, v3, Lcom/inmobi/ads/AdUnit;->b:J

    .line 1089
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1088
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 1091
    if-eqz v0, :cond_0

    .line 1092
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Ljava/util/Map;)V

    .line 1096
    :goto_0
    return-void

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->g()V

    goto :goto_0
.end method

.method public final f()V
    .locals 6

    .prologue
    .line 1100
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad dismissed for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v3, v3, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 3269
    iget-wide v4, v3, Lcom/inmobi/ads/AdUnit;->b:J

    .line 1101
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1100
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/AdUnit$7$2$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$7$2$2;-><init>(Lcom/inmobi/ads/AdUnit$7$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1108
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 1123
    if-eqz v0, :cond_0

    .line 1124
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->g()V

    .line 1128
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->g()V

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 1133
    if-eqz v0, :cond_0

    .line 1134
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->i()V

    .line 1138
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7$2;->a:Lcom/inmobi/ads/AdUnit$7;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->g()V

    goto :goto_0
.end method
