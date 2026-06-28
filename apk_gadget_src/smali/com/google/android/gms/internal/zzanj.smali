.class final Lcom/google/android/gms/internal/zzanj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$view:Landroid/view/View;

.field private synthetic zzdld:Lcom/google/android/gms/internal/zzafb;

.field private synthetic zzdle:I

.field private synthetic zzdlf:Lcom/google/android/gms/internal/zzani;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzani;Landroid/view/View;Lcom/google/android/gms/internal/zzafb;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanj;->zzdlf:Lcom/google/android/gms/internal/zzani;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanj;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzanj;->zzdld:Lcom/google/android/gms/internal/zzafb;

    iput p4, p0, Lcom/google/android/gms/internal/zzanj;->zzdle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj;->zzdlf:Lcom/google/android/gms/internal/zzani;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanj;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanj;->zzdld:Lcom/google/android/gms/internal/zzafb;

    iget v3, p0, Lcom/google/android/gms/internal/zzanj;->zzdle:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzani;Landroid/view/View;Lcom/google/android/gms/internal/zzafb;I)V

    return-void
.end method
