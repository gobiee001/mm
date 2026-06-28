.class final synthetic Lcom/google/android/gms/internal/zzajy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaka;


# instance fields
.field private final zzdei:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzajy;->zzdei:[B

    return-void
.end method


# virtual methods
.method public final zza(Landroid/util/JsonWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajy;->zzdei:[B

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzajv;->zza([BLandroid/util/JsonWriter;)V

    return-void
.end method
