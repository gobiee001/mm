.class public Lcom/inmobi/commons/core/network/c;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:[B

.field public b:Lcom/inmobi/commons/core/network/NetworkError;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/inmobi/commons/core/network/NetworkRequest;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/network/c;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/inmobi/commons/core/network/c;->e:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->a:[B

    array-length v0, v0

    if-nez v0, :cond_2

    .line 39
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/commons/core/network/c;->f:Ljava/lang/String;

    .line 48
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->f:Ljava/lang/String;

    return-object v0

    .line 42
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/c;->a:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/c;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/commons/core/network/c;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 86
    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/commons/core/network/c;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/inmobi/commons/core/network/c;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 97
    :cond_0
    :goto_0
    return-wide v0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SDK encountered unexpected error in computing response size; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
