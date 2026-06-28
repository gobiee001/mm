.class Lcom/moat/analytics/mobile/mpub/x;
.super Lcom/moat/analytics/mobile/mpub/b;

# interfaces
.implements Lcom/moat/analytics/mobile/mpub/WebAdTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/x$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/moat/analytics/mobile/mpub/b;-><init>(Landroid/view/View;ZZ)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->d()Lcom/moat/analytics/mobile/mpub/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "MoatWebAdTracker"

    const-string v2, "In initialization method."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public startTracking()V
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "MoatWebAdTracker"

    const-string v3, "In startTracking method."

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/moat/analytics/mobile/mpub/b;->startTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MoatWebAdTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to start tracking ad impression was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "successful."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, p0, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string v0, "un"

    goto :goto_1
.end method

.method public stopTracking()V
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "MoatWebAdTracker"

    const-string v3, "In stopTracking method."

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/moat/analytics/mobile/mpub/b;->stopTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MoatWebAdTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to stop tracking ad impression was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "successful."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, p0, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string v0, "un"

    goto :goto_1
.end method
