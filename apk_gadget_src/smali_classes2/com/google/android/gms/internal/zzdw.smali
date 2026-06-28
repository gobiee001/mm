.class public final Lcom/google/android/gms/internal/zzdw;
.super Lcom/google/android/gms/internal/zzet;


# instance fields
.field private final zzaki:Landroid/app/Activity;

.field private final zzakj:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaz;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    const/16 v6, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;-><init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaz;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzdw;->zzakj:Landroid/view/View;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzdw;->zzaki:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected final zzay()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw;->zzakj:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdw;->zzakw:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdw;->zzakj:Landroid/view/View;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdw;->zzaki:Landroid/app/Activity;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdw;->zzako:Lcom/google/android/gms/internal/zzaz;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzdw;->zzako:Lcom/google/android/gms/internal/zzaz;

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzaz;->zzez:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdw;->zzako:Lcom/google/android/gms/internal/zzaz;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzaz;->zzfa:Ljava/lang/Long;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
