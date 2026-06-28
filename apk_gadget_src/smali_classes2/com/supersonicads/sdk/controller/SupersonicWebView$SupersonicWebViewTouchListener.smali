.class Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupersonicWebViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method private constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p2, "x1"    # Lcom/supersonicads/sdk/controller/SupersonicWebView$1;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 229
    .local v12, "xTouch":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 231
    .local v13, "yTouch":F
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->getDeviceWidth()I

    move-result v11

    .line 234
    .local v11, "width":I
    invoke-static {}, Lcom/supersonic/environment/DeviceStatus;->getDeviceHeight()I

    move-result v10

    .line 236
    .local v10, "height":I
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->dpToPx(J)I

    move-result v8

    .line 240
    .local v8, "boundsTouchAreaX":I
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->dpToPx(J)I

    move-result v9

    .line 241
    .local v9, "boundsTouchAreaY":I
    const/4 v6, 0x0

    .line 242
    .local v6, "actualTouchX":I
    const/4 v7, 0x0

    .line 244
    .local v7, "actualTouchY":I
    const-string v0, "top-right"

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    float-to-int v0, v12

    sub-int v6, v11, v0

    .line 247
    float-to-int v7, v13

    .line 265
    :cond_0
    :goto_0
    if-gt v6, v8, :cond_2

    if-gt v7, v9, :cond_2

    .line 268
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$702(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z

    .line 273
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 277
    :cond_1
    iget-object v14, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;JJ)V

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 298
    .end local v6    # "actualTouchX":I
    .end local v7    # "actualTouchY":I
    .end local v8    # "boundsTouchAreaX":I
    .end local v9    # "boundsTouchAreaY":I
    .end local v10    # "height":I
    .end local v11    # "width":I
    .end local v12    # "xTouch":F
    .end local v13    # "yTouch":F
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 249
    .restart local v6    # "actualTouchX":I
    .restart local v7    # "actualTouchY":I
    .restart local v8    # "boundsTouchAreaX":I
    .restart local v9    # "boundsTouchAreaY":I
    .restart local v10    # "height":I
    .restart local v11    # "width":I
    .restart local v12    # "xTouch":F
    .restart local v13    # "yTouch":F
    :cond_3
    const-string v0, "top-left"

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    float-to-int v6, v12

    .line 252
    float-to-int v7, v13

    goto :goto_0

    .line 254
    :cond_4
    const-string v0, "bottom-right"

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    float-to-int v0, v12

    sub-int v6, v11, v0

    .line 257
    float-to-int v0, v13

    sub-int v7, v10, v0

    goto :goto_0

    .line 259
    :cond_5
    const-string v0, "bottom-left"

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    float-to-int v6, v12

    .line 262
    float-to-int v0, v13

    sub-int v7, v10, v0

    goto :goto_0
.end method
