.class public final enum Lcom/integralads/avid/library/mopub/session/internal/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/integralads/avid/library/mopub/session/internal/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/integralads/avid/library/mopub/session/internal/MediaType;

.field public static final enum DISPLAY:Lcom/integralads/avid/library/mopub/session/internal/MediaType;

.field public static final enum VIDEO:Lcom/integralads/avid/library/mopub/session/internal/MediaType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    const-string v1, "DISPLAY"

    const-string v2, "display"

    invoke-direct {v0, v1, v3, v2}, Lcom/integralads/avid/library/mopub/session/internal/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->DISPLAY:Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    .line 8
    new-instance v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    const-string v1, "VIDEO"

    const-string v2, "video"

    invoke-direct {v0, v1, v4, v2}, Lcom/integralads/avid/library/mopub/session/internal/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->VIDEO:Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    sget-object v1, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->DISPLAY:Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->VIDEO:Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->$VALUES:[Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->value:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/integralads/avid/library/mopub/session/internal/MediaType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->$VALUES:[Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    invoke-virtual {v0}, [Lcom/integralads/avid/library/mopub/session/internal/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->value:Ljava/lang/String;

    return-object v0
.end method
