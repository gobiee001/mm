.class Lcom/chartboost/sdk/impl/s$1;
.super Lcom/chartboost/sdk/impl/ar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/s;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/s;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/s;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ar;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s$1;->a:Lcom/chartboost/sdk/impl/s;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p$a;->g()V

    .line 78
    return-void
.end method
