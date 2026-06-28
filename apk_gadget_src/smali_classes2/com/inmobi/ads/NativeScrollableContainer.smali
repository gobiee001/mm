.class public abstract Lcom/inmobi/ads/NativeScrollableContainer;
.super Landroid/widget/FrameLayout;
.source "NativeScrollableContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeScrollableContainer$a;
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/NativeScrollableContainer;->a:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput p2, p0, Lcom/inmobi/ads/NativeScrollableContainer;->a:I

    .line 32
    return-void
.end method


# virtual methods
.method abstract a(Lcom/inmobi/ads/ag;Lcom/inmobi/ads/as;IILcom/inmobi/ads/NativeScrollableContainer$a;)V
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/inmobi/ads/NativeScrollableContainer;->a:I

    return v0
.end method
