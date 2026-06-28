.class Lcom/chartboost/sdk/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/e;->a(ZLandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/chartboost/sdk/e;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/e;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/chartboost/sdk/e$1;->c:Lcom/chartboost/sdk/e;

    iput-boolean p2, p0, Lcom/chartboost/sdk/e$1;->a:Z

    iput-object p3, p0, Lcom/chartboost/sdk/e$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/chartboost/sdk/e$1;->a:Z

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/chartboost/sdk/e$1;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/chartboost/sdk/e$1;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/e$1;->c:Lcom/chartboost/sdk/e;

    iget-object v1, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/e$1;->c:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/e$1;->b:Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
