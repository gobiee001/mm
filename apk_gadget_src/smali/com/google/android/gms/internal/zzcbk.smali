.class public final Lcom/google/android/gms/internal/zzcbk;
.super Ljava/lang/Object;


# instance fields
.field private zzcd:I

.field private zzhwd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcbk;->zzhwd:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzcbk;->zzcd:I

    return-void
.end method


# virtual methods
.method public final zzauc()Lcom/google/android/gms/internal/zzcbi;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzcbi;

    iget v1, p0, Lcom/google/android/gms/internal/zzcbk;->zzcd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcbk;->zzhwd:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcbi;-><init>(ILjava/util/HashMap;Lcom/google/android/gms/internal/zzcbj;)V

    return-object v0
.end method

.method public final zzdn(I)Lcom/google/android/gms/internal/zzcbk;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzcbk;->zzcd:I

    return-object p0
.end method

.method public final zzw(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzcbk;
    .locals 2

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbk;->zzhwd:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
