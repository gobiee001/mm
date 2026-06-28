.class public final enum Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;
.super Ljava/lang/Enum;
.source "MetricConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ags/constants/metrics/MetricConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricStringValueAttributesKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum COUNTRY:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum GAMERCARD_INLIBRARY:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum GAME_DATA_SIZE_KB:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum INSTALLER_PACKAGE_NAME:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum IS_BACK_FILL:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum OBJECT_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum PAGE_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum REWARD_DEFINITION_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum SCORE:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum SESSION_LENGTH:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum STATUS:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum TARGET_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

.field public static final enum XP_TYPE:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "COUNTRY"

    invoke-direct {v0, v1, v3}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->COUNTRY:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "PAGE_ID"

    invoke-direct {v0, v1, v4}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->PAGE_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "OBJECT_ID"

    invoke-direct {v0, v1, v5}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->OBJECT_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "SESSION_LENGTH"

    invoke-direct {v0, v1, v6}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->SESSION_LENGTH:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "GAME_DATA_SIZE_KB"

    invoke-direct {v0, v1, v7}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->GAME_DATA_SIZE_KB:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "STATUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->STATUS:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "TARGET_ID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->TARGET_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    .line 29
    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "XP_TYPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->XP_TYPE:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "REWARD_DEFINITION_ID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->REWARD_DEFINITION_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "INSTALLER_PACKAGE_NAME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->INSTALLER_PACKAGE_NAME:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "SCORE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->SCORE:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "IS_BACK_FILL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->IS_BACK_FILL:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    const-string v1, "GAMERCARD_INLIBRARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->GAMERCARD_INLIBRARY:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    .line 27
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->COUNTRY:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->PAGE_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->OBJECT_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->SESSION_LENGTH:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->GAME_DATA_SIZE_KB:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->STATUS:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->TARGET_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->XP_TYPE:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->REWARD_DEFINITION_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->INSTALLER_PACKAGE_NAME:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->SCORE:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->IS_BACK_FILL:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->GAMERCARD_INLIBRARY:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->$VALUES:[Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    return-object v0
.end method

.method public static values()[Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->$VALUES:[Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    invoke-virtual {v0}, [Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ags/constants/metrics/MetricConstants$MetricStringValueAttributesKeys;

    return-object v0
.end method
