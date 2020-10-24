.class Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;

.field final synthetic val$currentSplitVersionDir:Ljava/io/File;

.field final synthetic val$installedMarkFile:Ljava/io/File;

.field final synthetic val$splitName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;->val$currentSplitVersionDir:Ljava/io/File;

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;->val$splitName:Ljava/lang/String;

    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;->val$installedMarkFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;->val$currentSplitVersionDir:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;->val$splitName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "SplitDeleteRedundantVersionTask"

    const-string v1, "Split %s version %s has been installed!"

    invoke-static {p1, v1, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;->val$installedMarkFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method
