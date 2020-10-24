.class abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkSplitMD5(Ljava/io/File;Ljava/lang/String;)V
.end method

.method protected abstract createInstalledMark(Ljava/io/File;)Z
.end method

.method protected abstract createInstalledMarkLock(Ljava/io/File;Ljava/io/File;)Z
.end method

.method protected abstract extractLib(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/io/File;)V
.end method

.method protected abstract extractMultiDex(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/io/File;)Ljava/util/List;
.end method

.method public abstract install(ZLcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;
.end method

.method protected abstract verifySignature(Ljava/io/File;)V
.end method
