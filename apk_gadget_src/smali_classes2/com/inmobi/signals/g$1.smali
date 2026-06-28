.class final Lcom/inmobi/signals/g$1;
.super Ljava/lang/Object;
.source "CarbWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/signals/g;


# direct methods
.method constructor <init>(Lcom/inmobi/signals/g;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    invoke-static {v0}, Lcom/inmobi/signals/g;->a(Lcom/inmobi/signals/g;)Lcom/inmobi/signals/c;

    move-result-object v1

    .line 1078
    iget-boolean v0, v1, Lcom/inmobi/signals/c;->a:Z

    .line 62
    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    invoke-static {v0}, Lcom/inmobi/signals/g;->b(Lcom/inmobi/signals/g;)Lcom/inmobi/signals/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2028
    iget-object v0, v0, Lcom/inmobi/signals/a;->a:Lcom/inmobi/commons/core/c/c;

    const-string v4, "carb_last_update_ts"

    invoke-virtual {v0, v4, v2, v3}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;J)V

    .line 2094
    iget v0, v1, Lcom/inmobi/signals/c;->d:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 65
    :goto_0
    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    .line 3082
    iget-object v2, v1, Lcom/inmobi/signals/c;->b:Ljava/util/List;

    .line 66
    invoke-static {v2}, Lcom/inmobi/signals/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/signals/g;->a(Lcom/inmobi/signals/g;Lcom/inmobi/signals/c;Ljava/util/List;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    invoke-static {v0}, Lcom/inmobi/signals/g;->c(Lcom/inmobi/signals/g;)Z

    .line 70
    return-void

    .line 2094
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
