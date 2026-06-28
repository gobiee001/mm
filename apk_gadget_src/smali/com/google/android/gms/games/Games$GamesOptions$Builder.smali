.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games$GamesOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzhkp:Z

.field private zzhkq:Z

.field private zzhkr:I

.field private zzhks:Z

.field private zzhkt:I

.field private zzhku:Ljava/lang/String;

.field private zzhkv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzhkw:Z

.field private zzhkx:Z

.field private zzhky:Z

.field zzhkz:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkq:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkr:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhks:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkt:I

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhku:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkv:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkw:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhky:Z

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkz:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkq:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkr:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhks:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkt:I

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhku:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkv:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkw:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhky:Z

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkz:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhkp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkp:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhkq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkq:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhkr:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkr:I

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhks:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhks:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhkt:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkt:I

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhku:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhku:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhkv:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkv:Ljava/util/ArrayList;

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhkw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkw:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhkx:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkx:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhky:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhky:Z

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzhkz:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkz:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/games/zzi;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/games/Games$GamesOptions;
    .locals 13

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkp:Z

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkq:Z

    iget v3, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkr:I

    iget-boolean v4, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhks:Z

    iget v5, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkt:I

    iget-object v6, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhku:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkv:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkw:Z

    iget-boolean v9, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkx:Z

    iget-boolean v10, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhky:Z

    iget-object v11, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkz:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/games/zzi;)V

    return-object v0
.end method

.method public final setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkt:I

    return-object p0
.end method

.method public final setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkq:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkr:I

    return-object p0
.end method

.method public final setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkq:Z

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzhkr:I

    return-object p0
.end method
