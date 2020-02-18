.class public Lcom/ss/android/ttve/nativePort/TEGLGlobalContext;
.super Ljava/lang/Object;
.source "TEGLGlobalContext.java"


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

.method public static native nativeSetGLVersion(I)V
.end method
