.class public final enum Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;
.super Ljava/lang/Enum;
.source "ProcessorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

.field public static final enum BLUETOOTH_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

.field public static final enum LOCATION_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

.field public static final enum WIFI_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    const-string v1, "LOCATION_PROCESSOR"

    invoke-direct {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->LOCATION_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    .line 10
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    const-string v1, "WIFI_PROCESSOR"

    invoke-direct {v0, v1, v3}, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->WIFI_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    .line 11
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    const-string v1, "BLUETOOTH_PROCESSOR"

    invoke-direct {v0, v1, v4}, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->BLUETOOTH_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->LOCATION_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->WIFI_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->BLUETOOTH_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->$VALUES:[Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    return-object v0
.end method

.method public static values()[Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->$VALUES:[Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    invoke-virtual {v0}, [Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    return-object v0
.end method
