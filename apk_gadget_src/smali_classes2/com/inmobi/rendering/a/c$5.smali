.class final Lcom/inmobi/rendering/a/c$5;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Lcom/inmobi/commons/core/utilities/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/c;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$5;->a:Lcom/inmobi/rendering/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$5;->a:Lcom/inmobi/rendering/a/c;

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/c;->b()V

    .line 293
    :cond_0
    return-void
.end method
