.class final Lcom/inmobi/ads/ac$5;
.super Ljava/lang/Object;
.source "NativeAdContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ac;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ac;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ac;)V
    .locals 0

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/inmobi/ads/ac$5;->a:Lcom/inmobi/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/inmobi/ads/ac$5;->a:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->b(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/inmobi/ads/ac$5;->a:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ac;)V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ac$5;->a:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->b(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/ads/AdContainer;)I

    move-result v1

    .line 1188
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/inmobi/ads/ac$5;->a:Lcom/inmobi/ads/ac;

    iget-object v0, v0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1189
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1190
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v1, 0x66

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1191
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1192
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    const/16 v1, 0xc9

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1194
    iget-object v0, p0, Lcom/inmobi/ads/ac$5;->a:Lcom/inmobi/ads/ac;

    .line 2589
    iget-boolean v0, v0, Lcom/inmobi/ads/ac;->r:Z

    .line 1194
    if-eqz v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/inmobi/ads/ac$5;->a:Lcom/inmobi/ads/ac;

    .line 2785
    iput-object v2, v0, Lcom/inmobi/ads/ac;->s:Landroid/content/Intent;

    .line 1199
    :goto_0
    return-void

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac$5;->a:Lcom/inmobi/ads/ac;

    iget-object v0, v0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
