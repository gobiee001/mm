.class public final Lcom/google/android/gms/internal/zzdqd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzlst:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final zzlsu:[B

.field private final zzlsv:Lcom/google/android/gms/internal/zzdtb;

.field private final zzlsw:Lcom/google/android/gms/internal/zzdtt;


# direct methods
.method public constructor <init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/zzdtb;Lcom/google/android/gms/internal/zzdtt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/android/gms/internal/zzdtb;",
            "Lcom/google/android/gms/internal/zzdtt;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdqd;->zzlst:Ljava/lang/Object;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdqd;->zzlsu:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdqd;->zzlsv:Lcom/google/android/gms/internal/zzdtb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdqd;->zzlsw:Lcom/google/android/gms/internal/zzdtt;

    return-void
.end method


# virtual methods
.method public final zzblw()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqd;->zzlst:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzblx()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqd;->zzlsu:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqd;->zzlsu:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdqd;->zzlsu:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method
