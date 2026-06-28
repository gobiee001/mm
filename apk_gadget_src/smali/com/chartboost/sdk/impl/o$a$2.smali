.class Lcom/chartboost/sdk/impl/o$a$2;
.super Lcom/chartboost/sdk/impl/ar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/o$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/o$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/o$a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o$a$2;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ar;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a$2;->a:Lcom/chartboost/sdk/impl/o$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o$a;->d()V

    .line 98
    return-void
.end method
