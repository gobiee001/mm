.class Lcom/mopub/mraid/MraidController$3;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->handleClose()V

    .line 219
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->handleConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onExpand(Ljava/net/URI;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "shouldUseCustomClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->handleExpand(Ljava/net/URI;Z)V

    .line 231
    return-void
.end method

.method public onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->handleJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onOpen(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->handleOpen(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public onPageFailedToLoad()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onFailedToLoad()V

    .line 196
    :cond_0
    return-void
.end method

.method public onPageLoaded()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->handlePageLoad()V

    .line 189
    return-void
.end method

.method public onPlayVideo(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->handleShowVideo(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "closePosition"    # Lcom/mopub/common/CloseableLayout$ClosePosition;
    .param p6, "allowOffscreen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;->handleResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V

    .line 226
    return-void
.end method

.method public onSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V
    .locals 1
    .param p1, "allowOrientationChange"    # Z
    .param p2, "forceOrientation"    # Lcom/mopub/mraid/MraidOrientation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->handleSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V

    .line 242
    return-void
.end method

.method public onUseCustomClose(Z)V
    .locals 1
    .param p1, "shouldUseCustomClose"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->handleCustomClose(Z)V

    .line 236
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$3;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewability(Z)V

    .line 204
    :cond_0
    return-void
.end method
