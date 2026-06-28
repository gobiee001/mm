.class Lcom/chartboost/sdk/CBImpressionActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/CBImpressionActivity;
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
    .line 224
    iput-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity$1;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 228
    const-string v0, "CBImpressionActivity"

    const-string v1, "##### Phone call State: Ringing"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "CBImpressionActivity"

    const-string v1, "##### Pausing the impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity$1;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBImpressionActivity;->onPause()V

    .line 242
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 243
    return-void

    .line 231
    :cond_1
    if-nez p1, :cond_2

    .line 232
    const-string v0, "CBImpressionActivity"

    const-string v1, "##### Phone call State: Idle"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "CBImpressionActivity"

    const-string v1, "##### Resuming the impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity$1;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBImpressionActivity;->onResume()V

    goto :goto_0

    .line 236
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 238
    const-string v0, "CBImpressionActivity"

    const-string v1, "##### Phone call State: OffHook"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "CBImpressionActivity"

    const-string v1, "##### Pausing the impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity$1;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBImpressionActivity;->onPause()V

    goto :goto_0
.end method
