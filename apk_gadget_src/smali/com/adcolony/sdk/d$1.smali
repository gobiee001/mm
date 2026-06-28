.class Lcom/adcolony/sdk/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->d(Lcom/adcolony/sdk/af;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bd;

.field final synthetic b:Lcom/adcolony/sdk/af;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

.field final synthetic e:Lorg/json/JSONObject;

.field final synthetic f:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/bd;Lcom/adcolony/sdk/af;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/adcolony/sdk/d$1;->f:Lcom/adcolony/sdk/d;

    iput-object p2, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/bd;

    iput-object p3, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/af;

    iput-object p4, p0, Lcom/adcolony/sdk/d$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/adcolony/sdk/d$1;->d:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    iput-object p6, p0, Lcom/adcolony/sdk/d$1;->e:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/bd;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/adcolony/sdk/bc;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/af;

    iget-object v3, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/bd;

    invoke-direct {v0, v1, v2, v3}, Lcom/adcolony/sdk/bc;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/af;Lcom/adcolony/sdk/e;)V

    .line 73
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->f:Lcom/adcolony/sdk/d;

    invoke-static {v1}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/d;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/d$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->e:Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bc;->setAdvertiserName(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->e:Lorg/json/JSONObject;

    const-string v2, "title"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bc;->setTitle(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->e:Lorg/json/JSONObject;

    const-string v2, "description"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bc;->setDescription(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->e:Lorg/json/JSONObject;

    const-string v2, "thumb_filepath"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bc;->setImageFilepath(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcom/adcolony/sdk/bc;->b()Z

    .line 86
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/bd;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/bd;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bd;->a(Lcom/adcolony/sdk/bc;)V

    .line 91
    :goto_1
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/af;

    iget-object v3, p0, Lcom/adcolony/sdk/d$1;->d:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/adcolony/sdk/AdColonyNativeAdView;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/af;Lcom/adcolony/sdk/e;)V

    .line 76
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->f:Lcom/adcolony/sdk/d;

    invoke-static {v1}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/d;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/d$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->d:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onRequestFilled(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    goto :goto_1
.end method
