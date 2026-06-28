.class Lcom/chartboost/sdk/impl/i;
.super Lcom/chartboost/sdk/impl/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/x",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/h;

.field private final k:Lcom/chartboost/sdk/impl/j;

.field private final l:Lcom/chartboost/sdk/impl/ac;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/h;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 27
    const-string v0, "GET"

    iget-object v1, p3, Lcom/chartboost/sdk/impl/h;->c:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/chartboost/sdk/impl/x;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/i;->j:I

    .line 29
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i;->k:Lcom/chartboost/sdk/impl/j;

    .line 30
    iput-object p2, p0, Lcom/chartboost/sdk/impl/i;->l:Lcom/chartboost/sdk/impl/ac;

    .line 31
    iput-object p3, p0, Lcom/chartboost/sdk/impl/i;->a:Lcom/chartboost/sdk/impl/h;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/y;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string v1, "X-Chartboost-App"

    sget-object v2, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "X-Chartboost-Client"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "X-Chartboost-Reachability"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i;->l:Lcom/chartboost/sdk/impl/ac;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ac;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Lcom/chartboost/sdk/impl/y;

    invoke-direct {v1, v0, v3, v3}, Lcom/chartboost/sdk/impl/y;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/aa;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i;->k:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/aa;)V

    .line 53
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/aa;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/i;->a(Ljava/lang/Void;Lcom/chartboost/sdk/impl/aa;)V

    return-void
.end method

.method public a(Ljava/lang/Void;Lcom/chartboost/sdk/impl/aa;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i;->k:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, p0, v1, v1}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/aa;)V

    .line 48
    return-void
.end method
