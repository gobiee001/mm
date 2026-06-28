.class final synthetic Lcom/google/firebase/appindexing/internal/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final zzegz:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/appindexing/internal/zzz;

    invoke-direct {v0}, Lcom/google/firebase/appindexing/internal/zzz;-><init>()V

    sput-object v0, Lcom/google/firebase/appindexing/internal/zzz;->zzegz:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/firebase/appindexing/internal/Thing;->zzba(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
