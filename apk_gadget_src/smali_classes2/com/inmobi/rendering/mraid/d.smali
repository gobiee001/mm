.class public final Lcom/inmobi/rendering/mraid/d;
.super Ljava/lang/Object;
.source "MraidJsDao.java"


# instance fields
.field public a:Lcom/inmobi/commons/core/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "mraid_js_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/d;->a:Lcom/inmobi/commons/core/c/c;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->a:Lcom/inmobi/commons/core/c/c;

    const-string v1, "mraid_js_string"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->a:Lcom/inmobi/commons/core/c/c;

    const-string v1, "last_updated_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;J)V

    .line 27
    return-void
.end method
