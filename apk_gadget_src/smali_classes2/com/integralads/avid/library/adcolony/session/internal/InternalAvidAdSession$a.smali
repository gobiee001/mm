.class final enum Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

.field public static final enum b:Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

.field public static final enum c:Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

.field private static final synthetic d:[Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    const-string v1, "AD_STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;->a:Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    .line 25
    new-instance v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    const-string v1, "AD_STATE_VISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;->b:Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    .line 26
    new-instance v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    const-string v1, "AD_STATE_HIDDEN"

    invoke-direct {v0, v1, v4}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;->c:Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    sget-object v1, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;->a:Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;->b:Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;->c:Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;->d:[Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    return-object v0
.end method

.method public static values()[Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;->d:[Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    invoke-virtual {v0}, [Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession$a;

    return-object v0
.end method
