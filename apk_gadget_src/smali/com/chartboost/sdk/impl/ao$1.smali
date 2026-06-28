.class Lcom/chartboost/sdk/impl/ao$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ao;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;ZLcom/chartboost/sdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/chartboost/sdk/Model/c;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Z

.field final synthetic f:Lcom/chartboost/sdk/impl/ao;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ao;Landroid/view/View;ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ao$1;->f:Lcom/chartboost/sdk/impl/ao;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/ao$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/chartboost/sdk/impl/ao$1;->b:I

    iput-object p4, p0, Lcom/chartboost/sdk/impl/ao$1;->c:Lcom/chartboost/sdk/Model/c;

    iput-object p5, p0, Lcom/chartboost/sdk/impl/ao$1;->d:Ljava/lang/Runnable;

    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/ao$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$1;->f:Lcom/chartboost/sdk/impl/ao;

    iget v1, p0, Lcom/chartboost/sdk/impl/ao$1;->b:I

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ao$1;->c:Lcom/chartboost/sdk/Model/c;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ao$1;->d:Ljava/lang/Runnable;

    iget-boolean v4, p0, Lcom/chartboost/sdk/impl/ao$1;->e:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/ao;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V

    .line 106
    return-void
.end method
