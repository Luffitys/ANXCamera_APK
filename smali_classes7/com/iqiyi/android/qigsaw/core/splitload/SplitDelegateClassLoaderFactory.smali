.class public Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassLoaderFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instantiateClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method
