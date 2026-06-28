.class public final Lcom/inmobi/signals/a;
.super Ljava/lang/Object;
.source "CarbDao.java"


# instance fields
.field a:Lcom/inmobi/commons/core/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "carb_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/signals/a;->a:Lcom/inmobi/commons/core/c/c;

    .line 21
    return-void
.end method
