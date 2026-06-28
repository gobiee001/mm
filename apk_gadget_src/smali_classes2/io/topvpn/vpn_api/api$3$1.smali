.class Lio/topvpn/vpn_api/api$3$1;
.super Ljava/lang/Object;
.source "api.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/api$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/api$3;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/api$3;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lio/topvpn/vpn_api/api$3$1;->this$0:Lio/topvpn/vpn_api/api$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lio/topvpn/vpn_api/api$3$1;->this$0:Lio/topvpn/vpn_api/api$3;

    iget-object v0, v0, Lio/topvpn/vpn_api/api$3;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->start(Landroid/content/Context;)V

    return-void
.end method
