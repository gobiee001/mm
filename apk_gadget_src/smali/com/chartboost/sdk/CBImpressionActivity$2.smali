.class Lcom/chartboost/sdk/CBImpressionActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/CBImpressionActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/CBImpressionActivity;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity$2;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 255
    :try_start_0
    const-string v0, "VideoInit"

    const-string v1, "preparing activity for video surface"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity$2;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 257
    iget-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity$2;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/CBImpressionActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v2, "postCreateSurfaceView Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
