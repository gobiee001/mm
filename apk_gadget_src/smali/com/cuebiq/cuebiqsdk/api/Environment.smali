.class public final enum Lcom/cuebiq/cuebiqsdk/api/Environment;
.super Ljava/lang/Enum;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cuebiq/cuebiqsdk/api/Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cuebiq/cuebiqsdk/api/Environment;

.field public static final enum DEVELOPMENT:Lcom/cuebiq/cuebiqsdk/api/Environment;

.field public static final enum LOCAL:Lcom/cuebiq/cuebiqsdk/api/Environment;

.field public static final enum PRODUCTION:Lcom/cuebiq/cuebiqsdk/api/Environment;

.field public static final enum SANDBOX:Lcom/cuebiq/cuebiqsdk/api/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/cuebiq/cuebiqsdk/api/Environment;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/api/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/Environment;->LOCAL:Lcom/cuebiq/cuebiqsdk/api/Environment;

    .line 10
    new-instance v0, Lcom/cuebiq/cuebiqsdk/api/Environment;

    const-string v1, "DEVELOPMENT"

    invoke-direct {v0, v1, v3}, Lcom/cuebiq/cuebiqsdk/api/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/Environment;->DEVELOPMENT:Lcom/cuebiq/cuebiqsdk/api/Environment;

    .line 11
    new-instance v0, Lcom/cuebiq/cuebiqsdk/api/Environment;

    const-string v1, "SANDBOX"

    invoke-direct {v0, v1, v4}, Lcom/cuebiq/cuebiqsdk/api/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/Environment;->SANDBOX:Lcom/cuebiq/cuebiqsdk/api/Environment;

    .line 12
    new-instance v0, Lcom/cuebiq/cuebiqsdk/api/Environment;

    const-string v1, "PRODUCTION"

    invoke-direct {v0, v1, v5}, Lcom/cuebiq/cuebiqsdk/api/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/Environment;->PRODUCTION:Lcom/cuebiq/cuebiqsdk/api/Environment;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cuebiq/cuebiqsdk/api/Environment;

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/Environment;->LOCAL:Lcom/cuebiq/cuebiqsdk/api/Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/Environment;->DEVELOPMENT:Lcom/cuebiq/cuebiqsdk/api/Environment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/Environment;->SANDBOX:Lcom/cuebiq/cuebiqsdk/api/Environment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/Environment;->PRODUCTION:Lcom/cuebiq/cuebiqsdk/api/Environment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/Environment;->$VALUES:[Lcom/cuebiq/cuebiqsdk/api/Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/api/Environment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/cuebiq/cuebiqsdk/api/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cuebiq/cuebiqsdk/api/Environment;

    return-object v0
.end method

.method public static values()[Lcom/cuebiq/cuebiqsdk/api/Environment;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/cuebiq/cuebiqsdk/api/Environment;->$VALUES:[Lcom/cuebiq/cuebiqsdk/api/Environment;

    invoke-virtual {v0}, [Lcom/cuebiq/cuebiqsdk/api/Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cuebiq/cuebiqsdk/api/Environment;

    return-object v0
.end method
