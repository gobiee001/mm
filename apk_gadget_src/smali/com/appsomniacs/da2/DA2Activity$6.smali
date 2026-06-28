.class Lcom/appsomniacs/da2/DA2Activity$6;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lio/topvpn/vpn_api/api$on_selection_listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$6;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_user_selection(I)V
    .locals 3
    .param p1, "choice"    # I

    .prologue
    .line 1236
    packed-switch p1, :pswitch_data_0

    .line 1252
    const-string v0, "LuminatiPeerStateSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PeerActivation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/appsomniacs/da2/DA2Activity;->access$1000(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :goto_0
    return-void

    .line 1239
    :pswitch_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$900()V

    .line 1241
    const-string v0, "LuminatiPeerStateSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PeerActivation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/appsomniacs/da2/DA2Activity;->access$1000(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
