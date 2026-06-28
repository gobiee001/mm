.class Lcom/mopub/mobileads/MraidActivity$4;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/MraidActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .locals 3
    .param p1, "webView"    # Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .param p2, "viewabilityManager"    # Lcom/mopub/common/ExternalViewabilitySessionManager;

    .prologue
    .line 197
    if-eqz p2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-static {v0, p2}, Lcom/mopub/mobileads/MraidActivity;->access$102(Lcom/mopub/mobileads/MraidActivity;Lcom/mopub/common/ExternalViewabilitySessionManager;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    new-instance v1, Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v2, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MraidActivity;->access$102(Lcom/mopub/mobileads/MraidActivity;Lcom/mopub/common/ExternalViewabilitySessionManager;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 201
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/MraidActivity;->access$100(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity$4;->this$0:Lcom/mopub/mobileads/MraidActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)V

    goto :goto_0
.end method
