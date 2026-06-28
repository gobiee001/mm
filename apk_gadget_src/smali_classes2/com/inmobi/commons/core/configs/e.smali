.class Lcom/inmobi/commons/core/configs/e;
.super Ljava/lang/Object;
.source "ConfigNetworkClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/commons/core/configs/f;

.field private c:I

.field private d:Lcom/inmobi/commons/core/configs/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/configs/e;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/commons/core/configs/e$a;Lcom/inmobi/commons/core/configs/f;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/e;->d:Lcom/inmobi/commons/core/configs/e$a;

    .line 26
    iput-object p2, p0, Lcom/inmobi/commons/core/configs/e;->b:Lcom/inmobi/commons/core/configs/f;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/commons/core/configs/e;->c:I

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 79
    .line 1033
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/inmobi/commons/core/configs/e;->c:I

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/e;->b:Lcom/inmobi/commons/core/configs/f;

    .line 2068
    iget v3, v3, Lcom/inmobi/commons/core/configs/f;->a:I

    .line 1033
    if-gt v2, v3, :cond_4

    .line 1034
    new-instance v2, Lcom/inmobi/commons/core/network/d;

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/e;->b:Lcom/inmobi/commons/core/configs/f;

    invoke-direct {v2, v3}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 1035
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1036
    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v2

    .line 1038
    new-instance v3, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;

    iget-object v6, p0, Lcom/inmobi/commons/core/configs/e;->b:Lcom/inmobi/commons/core/configs/f;

    .line 3064
    iget-object v6, v6, Lcom/inmobi/commons/core/configs/f;->c:Ljava/util/Map;

    .line 1039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-direct {v3, v6, v2, v4, v5}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;-><init>(Ljava/util/Map;Lcom/inmobi/commons/core/network/c;J)V

    .line 3091
    iget-object v4, v3, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a:Ljava/util/Map;

    .line 1042
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 1043
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;

    .line 1044
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1046
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1047
    iget-object v6, p0, Lcom/inmobi/commons/core/configs/e;->d:Lcom/inmobi/commons/core/configs/e$a;

    invoke-interface {v6, v2}, Lcom/inmobi/commons/core/configs/e$a;->a(Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;)V

    .line 1048
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/e;->b:Lcom/inmobi/commons/core/configs/f;

    .line 4076
    iget-object v2, v2, Lcom/inmobi/commons/core/configs/f;->c:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 83
    :catch_0
    move-exception v2

    :goto_2
    return-void

    .line 1054
    :cond_1
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/e;->b:Lcom/inmobi/commons/core/configs/f;

    .line 5064
    iget-object v2, v2, Lcom/inmobi/commons/core/configs/f;->c:Ljava/util/Map;

    .line 1054
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1055
    iget v2, p0, Lcom/inmobi/commons/core/configs/e;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/inmobi/commons/core/configs/e;->c:I

    .line 1058
    iget v2, p0, Lcom/inmobi/commons/core/configs/e;->c:I

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/e;->b:Lcom/inmobi/commons/core/configs/f;

    .line 5068
    iget v3, v3, Lcom/inmobi/commons/core/configs/f;->a:I

    .line 1058
    if-le v2, v3, :cond_3

    .line 1059
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/e;->b:Lcom/inmobi/commons/core/configs/f;

    .line 6064
    iget-object v2, v2, Lcom/inmobi/commons/core/configs/f;->c:Ljava/util/Map;

    .line 1059
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1060
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1061
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1062
    iget-object v5, p0, Lcom/inmobi/commons/core/configs/e;->d:Lcom/inmobi/commons/core/configs/e$a;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;

    invoke-interface {v5, v2}, Lcom/inmobi/commons/core/configs/e$a;->a(Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;)V

    goto :goto_3

    .line 1067
    :cond_3
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/e;->b:Lcom/inmobi/commons/core/configs/f;

    .line 6072
    iget v2, v2, Lcom/inmobi/commons/core/configs/f;->b:I

    .line 1067
    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 1073
    :cond_4
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/e;->d:Lcom/inmobi/commons/core/configs/e$a;

    invoke-interface {v2}, Lcom/inmobi/commons/core/configs/e$a;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
