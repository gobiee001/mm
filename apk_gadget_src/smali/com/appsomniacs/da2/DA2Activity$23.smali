.class final Lcom/appsomniacs/da2/DA2Activity$23;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->canResolveNameToAddress(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2999
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$23;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2999
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity$23;->call()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 3003
    :try_start_0
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$23;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3005
    :goto_0
    return-object v1

    .line 3004
    :catch_0
    move-exception v0

    .line 3005
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method
