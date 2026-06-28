.class public final Lcom/google/android/gms/internal/zzen;
.super Lcom/google/android/gms/internal/zzet;


# instance fields
.field private final zzahv:Lcom/google/android/gms/internal/zzdt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaz;IILcom/google/android/gms/internal/zzdt;)V
    .locals 7

    const/16 v6, 0x35

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;-><init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaz;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzen;->zzahv:Lcom/google/android/gms/internal/zzdt;

    return-void
.end method


# virtual methods
.method protected final zzay()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzahv:Lcom/google/android/gms/internal/zzdt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzen;->zzako:Lcom/google/android/gms/internal/zzaz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzen;->zzakw:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzen;->zzahv:Lcom/google/android/gms/internal/zzdt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzdt;->zzaw()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaz;->zzeo:Ljava/lang/Long;

    :cond_0
    return-void
.end method
