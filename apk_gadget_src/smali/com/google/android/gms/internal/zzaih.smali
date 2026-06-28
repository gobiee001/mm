.class final Lcom/google/android/gms/internal/zzaih;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzdbl:I

.field private synthetic zzdbm:I

.field private synthetic zzdbn:I

.field private synthetic zzdbo:Lcom/google/android/gms/internal/zzaig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaig;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaih;->zzdbo:Lcom/google/android/gms/internal/zzaig;

    iput p2, p0, Lcom/google/android/gms/internal/zzaih;->zzdbl:I

    iput p3, p0, Lcom/google/android/gms/internal/zzaih;->zzdbm:I

    iput p4, p0, Lcom/google/android/gms/internal/zzaih;->zzdbn:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzaih;->zzdbl:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->zzdbo:Lcom/google/android/gms/internal/zzaig;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaig;->zza(Lcom/google/android/gms/internal/zzaig;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzaih;->zzdbm:I

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbqu:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->zzdbo:Lcom/google/android/gms/internal/zzaig;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaig;->zzb(Lcom/google/android/gms/internal/zzaig;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzaih;->zzdbn:I

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbqv:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->zzdbo:Lcom/google/android/gms/internal/zzaig;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaig;->zzc(Lcom/google/android/gms/internal/zzaig;)V

    goto :goto_0
.end method
