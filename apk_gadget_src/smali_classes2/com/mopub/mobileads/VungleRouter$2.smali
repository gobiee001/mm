.class Lcom/mopub/mobileads/VungleRouter$2;
.super Ljava/lang/Object;
.source "VungleRouter.java"

# interfaces
.implements Lcom/vungle/publisher/VungleInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VungleRouter;->initVungle(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VungleRouter;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VungleRouter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VungleRouter;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mopub/mobileads/VungleRouter$2;->this$0:Lcom/mopub/mobileads/VungleRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    const-string v0, "Vungle Router: Initialization is failed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/mopub/mobileads/VungleRouter$SDKInitState;->NOTINITIALIZED:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRouter;->access$102(Lcom/mopub/mobileads/VungleRouter$SDKInitState;)Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    .line 93
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 80
    const-string v0, "Vungle Router: SDK is initialized successfully."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/mopub/mobileads/VungleRouter$SDKInitState;->INITIALIZED:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRouter;->access$102(Lcom/mopub/mobileads/VungleRouter$SDKInitState;)Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    .line 84
    invoke-static {}, Lcom/mopub/mobileads/VungleRouter;->access$000()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vungle/publisher/VungleAdEventListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mopub/mobileads/VungleRouter$2;->this$0:Lcom/mopub/mobileads/VungleRouter;

    invoke-static {v3}, Lcom/mopub/mobileads/VungleRouter;->access$200(Lcom/mopub/mobileads/VungleRouter;)Lcom/vungle/publisher/VungleAdEventListener;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->clearAndSetEventListeners([Lcom/vungle/publisher/VungleAdEventListener;)V

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRouter$2;->this$0:Lcom/mopub/mobileads/VungleRouter;

    invoke-static {v0}, Lcom/mopub/mobileads/VungleRouter;->access$300(Lcom/mopub/mobileads/VungleRouter;)V

    .line 86
    return-void
.end method
