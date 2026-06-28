.class public final Lcom/inmobi/ads/bo;
.super Ljava/lang/Object;
.source "VastMediaFile.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:D

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/inmobi/ads/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/inmobi/ads/bo;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/inmobi/ads/bo;->d:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/inmobi/ads/bo;->e:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/inmobi/ads/bo;->b:I

    .line 19
    return-void
.end method
