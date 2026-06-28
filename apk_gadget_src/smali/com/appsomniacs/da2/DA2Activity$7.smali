.class final Lcom/appsomniacs/da2/DA2Activity$7;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 1334
    packed-switch p2, :pswitch_data_0

    .line 1357
    :goto_0
    return-void

    .line 1337
    :pswitch_0
    const-string v2, "DA2"

    const-string v3, "Luminati Prompt: Luminati user is keeping peer status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$900()V

    goto :goto_0

    .line 1342
    :pswitch_1
    const-string v2, "DA2"

    const-string v3, "Luminati Prompt: Luminati user selection cleared"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$1100()V

    .line 1346
    invoke-static {v6}, Lcom/appsomniacs/da2/DA2Activity;->access$1202(Z)Z

    .line 1347
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1348
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1349
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v0, :cond_0

    .line 1350
    const-string v2, "Anomaly"

    const-string v3, "ActivtyNull%sdialogKeepLuminatiEnabledListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1352
    :cond_0
    invoke-static {v0}, Lio/topvpn/vpn_api/api;->clear_selection(Landroid/content/Context;)V

    .line 1353
    const-string v2, "DA2"

    const-string v3, "Luminati Prompt: Luminati user selection cleared"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1334
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
