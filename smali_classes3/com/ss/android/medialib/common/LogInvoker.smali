.class public Lcom/ss/android/medialib/common/LogInvoker;
.super Ljava/lang/Object;
.source "LogInvoker.java"


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

.method private static native nativeSetLogLevel(I)V
.end method

.method public static setLogLevel(I)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/medialib/common/LogInvoker;->nativeSetLogLevel(I)V

    return-void
.end method
