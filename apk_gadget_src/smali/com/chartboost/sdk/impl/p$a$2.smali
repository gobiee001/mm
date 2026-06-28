.class Lcom/chartboost/sdk/impl/p$a$2;
.super Lcom/chartboost/sdk/impl/ar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/p$a;-><init>(Lcom/chartboost/sdk/impl/p;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/p;

.field final synthetic b:Lcom/chartboost/sdk/impl/p$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/p$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p$a$2;->b:Lcom/chartboost/sdk/impl/p$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/p$a$2;->a:Lcom/chartboost/sdk/impl/p;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ar;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a$2;->b:Lcom/chartboost/sdk/impl/p$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p$a;->d()V

    .line 156
    return-void
.end method
