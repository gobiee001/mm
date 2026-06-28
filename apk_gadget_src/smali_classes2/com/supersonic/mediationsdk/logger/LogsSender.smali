.class Lcom/supersonic/mediationsdk/logger/LogsSender;
.super Ljava/lang/Object;
.source "LogsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final AUTHO_PASSWORD:Ljava/lang/String;

.field private final AUTHO_USERNAME:Ljava/lang/String;

.field private final LOG_URL:Ljava/lang/String;

.field private mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/logger/ServerLogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/logger/ServerLogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/logger/ServerLogEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "https://mobilelogs.supersonic.com"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->LOG_URL:Ljava/lang/String;

    .line 19
    const-string v0, "mobilelogs"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->AUTHO_USERNAME:Ljava/lang/String;

    .line 20
    const-string v0, "k@r@puz"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->AUTHO_PASSWORD:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->mLogs:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
