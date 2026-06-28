.class public final Lrx/observers/Observers;
.super Ljava/lang/Object;
.source "Observers.java"


# static fields
.field private static final EMPTY:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lrx/observers/Observers$1;

    invoke-direct {v0}, Lrx/observers/Observers$1;-><init>()V

    sput-object v0, Lrx/observers/Observers;->EMPTY:Lrx/Observer;

    return-void
.end method

.method public static empty()Lrx/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lrx/observers/Observers;->EMPTY:Lrx/Observer;

    return-object v0
.end method
