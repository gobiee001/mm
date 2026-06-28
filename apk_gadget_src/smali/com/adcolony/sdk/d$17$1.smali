.class Lcom/adcolony/sdk/d$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d$17;->a(Lcom/adcolony/sdk/af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/af;

.field final synthetic b:Lcom/adcolony/sdk/d$17;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d$17;Lcom/adcolony/sdk/af;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/adcolony/sdk/d$17$1;->b:Lcom/adcolony/sdk/d$17;

    iput-object p2, p0, Lcom/adcolony/sdk/d$17$1;->a:Lcom/adcolony/sdk/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/adcolony/sdk/d$17$1;->b:Lcom/adcolony/sdk/d$17;

    iget-object v0, v0, Lcom/adcolony/sdk/d$17;->a:Lcom/adcolony/sdk/d;

    invoke-static {v0}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/d$17$1;->a:Lcom/adcolony/sdk/af;

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bc;

    .line 346
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bc;->getListener()Lcom/adcolony/sdk/e;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/adcolony/sdk/bc;->getListener()Lcom/adcolony/sdk/e;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onNativeVideoFinished(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    .line 349
    :cond_0
    return-void
.end method
