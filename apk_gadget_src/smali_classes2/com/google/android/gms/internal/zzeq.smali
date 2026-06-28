.class public final Lcom/google/android/gms/internal/zzeq;
.super Lcom/google/android/gms/internal/zzet;


# instance fields
.field private final zzakj:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaz;IILandroid/view/View;)V
    .locals 7

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;-><init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaz;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzeq;->zzakj:Landroid/view/View;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzakj:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzagr:Lcom/google/android/gms/internal/zzdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzakw:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzeq;->zzakj:Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzds;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzds;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbb;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzds;->zzajv:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzbb;->zzgd:Ljava/lang/Long;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzds;->zzge:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzbb;->zzge:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzds;->zzgf:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbb;->zzgf:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzako:Lcom/google/android/gms/internal/zzaz;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaz;->zzeu:Lcom/google/android/gms/internal/zzbb;

    :cond_0
    return-void
.end method
