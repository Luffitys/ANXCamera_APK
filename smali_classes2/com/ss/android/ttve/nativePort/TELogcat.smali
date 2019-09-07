.class public Lcom/ss/android/ttve/nativePort/TELogcat;
.super Ljava/lang/Object;
.source "TELogcat.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Log(BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TELogcat;->nativeLog(BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeLog(BLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetLogLevel(B)V
.end method

.method public static setLogLevel(B)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TELogcat;->nativeSetLogLevel(B)V

    return-void
.end method
