.class public final enum Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
.super Ljava/lang/Enum;
.source "CoverageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cuebiq/cuebiqsdk/model/CoverageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoverageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

.field public static final enum CHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

.field public static final enum PENDING:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

.field public static final enum UNCHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    const-string v1, "UNCHECKED"

    invoke-direct {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->UNCHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    .line 31
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->PENDING:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    .line 32
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    const-string v1, "CHECKED"

    invoke-direct {v0, v1, v4}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->CHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->UNCHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->PENDING:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->CHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->$VALUES:[Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    return-object v0
.end method

.method public static values()[Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->$VALUES:[Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-virtual {v0}, [Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    return-object v0
.end method
