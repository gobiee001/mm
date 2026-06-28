.class synthetic Lcom/cuebiq/cuebiqsdk/model/CoverageManager$2;
.super Ljava/lang/Object;
.source "CoverageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cuebiq/cuebiqsdk/model/CoverageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cuebiq$cuebiqsdk$model$CoverageManager$CoverageStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->values()[Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$2;->$SwitchMap$com$cuebiq$cuebiqsdk$model$CoverageManager$CoverageStatus:[I

    :try_start_0
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$2;->$SwitchMap$com$cuebiq$cuebiqsdk$model$CoverageManager$CoverageStatus:[I

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->UNCHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$2;->$SwitchMap$com$cuebiq$cuebiqsdk$model$CoverageManager$CoverageStatus:[I

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->CHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$2;->$SwitchMap$com$cuebiq$cuebiqsdk$model$CoverageManager$CoverageStatus:[I

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->PENDING:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
