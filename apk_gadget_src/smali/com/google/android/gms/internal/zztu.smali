.class public final Lcom/google/android/gms/internal/zztu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field public static final zzccb:Lcom/google/android/gms/internal/zztt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zztt",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static zzccc:Lcom/google/android/gms/internal/zztr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zztr",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zztu;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/internal/zztw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztu;->zzccb:Lcom/google/android/gms/internal/zztt;

    sget-object v0, Lcom/google/android/gms/internal/zztv;->zzccd:Lcom/google/android/gms/internal/zztr;

    sput-object v0, Lcom/google/android/gms/internal/zztu;->zzccc:Lcom/google/android/gms/internal/zztr;

    return-void
.end method

.method static final synthetic zzg(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayInputStream;

    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/zztu;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
