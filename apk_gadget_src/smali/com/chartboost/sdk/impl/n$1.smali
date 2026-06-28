.class Lcom/chartboost/sdk/impl/n$1;
.super Lcom/chartboost/sdk/impl/ar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/n;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/n;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/n;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n$1;->a:Lcom/chartboost/sdk/impl/n;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ar;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n$1;->a:Lcom/chartboost/sdk/impl/n;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/n;->a:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-super {p0}, Lcom/chartboost/sdk/impl/ar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-super {p0}, Lcom/chartboost/sdk/impl/ar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/p$a;->b(FFFF)V

    .line 60
    return-void
.end method
