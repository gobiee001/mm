.class public final Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;
.super Ljava/lang/Object;
.source "PersistenceManagerFactory.java"


# static fields
.field private static mInject:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

.field private static mInstance:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->mInject:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static clearInject()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->mInject:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    .line 31
    return-void
.end method

.method public static get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->mInject:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    if-nez v0, :cond_1

    .line 17
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->mInstance:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerImpl;-><init>()V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->mInstance:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->mInstance:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    .line 22
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->mInject:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    goto :goto_0
.end method

.method public static inject(Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;)V
    .locals 0
    .param p0, "pm"    # Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    .prologue
    .line 26
    sput-object p0, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->mInject:Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    .line 27
    return-void
.end method
