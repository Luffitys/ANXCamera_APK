.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sSplitApkInstallerRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->sSplitApkInstallerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSplitInstallSupervisor()Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->sSplitApkInstallerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

    return-object v0
.end method

.method public static install(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Ljava/lang/Class;Z)V
    .locals 8

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->sSplitApkInstallerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->sSplitApkInstallerRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v7, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;

    new-instance v3, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;

    invoke-direct {v3, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;-><init>(Landroid/content/Context;)V

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;-><init>(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Ljava/lang/Class;Z)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static startUninstallSplits(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->sSplitApkInstallerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->sSplitApkInstallerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

    invoke-virtual {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->startUninstall(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Have you install SplitApkInstaller?"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
