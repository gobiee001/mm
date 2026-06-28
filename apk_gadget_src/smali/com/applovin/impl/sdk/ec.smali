.class public Lcom/applovin/impl/sdk/ec;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/util/HashSet;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final g:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final h:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/util/HashSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/applovin/impl/sdk/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/ec",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.impl.isFirstRun"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->a:Lcom/applovin/impl/sdk/ec;

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.impl.postbackQueue.key"

    const-class v2, Ljava/util/HashSet;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->b:Lcom/applovin/impl/sdk/ec;

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.last_version_code"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->c:Lcom/applovin/impl/sdk/ec;

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.device_data"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->d:Lcom/applovin/impl/sdk/ec;

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.zones"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->e:Lcom/applovin/impl/sdk/ec;

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.loaded_mediation_adapters"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->f:Lcom/applovin/impl/sdk/ec;

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.stats"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->g:Lcom/applovin/impl/sdk/ec;

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.ad.stats"

    const-class v2, Ljava/util/HashSet;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->h:Lcom/applovin/impl/sdk/ec;

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.last_video_position"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->i:Lcom/applovin/impl/sdk/ec;

    new-instance v0, Lcom/applovin/impl/sdk/ec;

    const-string v1, "com.applovin.sdk.should_resume_video"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/applovin/impl/sdk/ec;->j:Lcom/applovin/impl/sdk/ec;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ec;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ec;->l:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ec;->k:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ec;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ec;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ec;->l:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
