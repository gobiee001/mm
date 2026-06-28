.class Lcom/chartboost/sdk/impl/v$1;
.super Lcom/chartboost/sdk/impl/ar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/v;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$1;->a:Lcom/chartboost/sdk/impl/v;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ar;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "x"

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "w"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$1;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    .line 99
    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ar;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "h"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$1;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    .line 100
    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ar;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 96
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$1;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/p;->b(Lorg/json/JSONObject;)Z

    .line 104
    return-void
.end method
