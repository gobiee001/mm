.class final enum Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;
.super Ljava/lang/Enum;
.source "SISRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/SISRegisterEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SISRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

.field public static final enum GENERATE_DID:Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

.field public static final enum REGISTER_EVENT:Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

.field public static final enum UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    new-instance v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    const-string v1, "GENERATE_DID"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->GENERATE_DID:Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    .line 326
    new-instance v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    const-string v1, "UPDATE_DEVICE_INFO"

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    .line 327
    new-instance v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    const-string v1, "REGISTER_EVENT"

    invoke-direct {v0, v1, v4}, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->REGISTER_EVENT:Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    .line 323
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    sget-object v1, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->GENERATE_DID:Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->REGISTER_EVENT:Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->$VALUES:[Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

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
    .line 323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 323
    const-class v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->$VALUES:[Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    return-object v0
.end method
