.class final Lcom/inmobi/commons/core/d/c$1;
.super Ljava/lang/Object;
.source "TelemetryComponent.java"

# interfaces
.implements Lcom/inmobi/commons/core/utilities/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/core/d/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/core/d/c;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/core/d/c;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/inmobi/commons/core/d/c$1;->a:Lcom/inmobi/commons/core/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    .line 89
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/inmobi/commons/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/c;)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    return-void
.end method
