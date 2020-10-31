.class Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;
.super Ljava/lang/Object;
.source "EgretRuntimeLibrary.java"

# interfaces
.implements Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doUnzip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

.field final synthetic val$cache:Ljava/io/File;

.field final synthetic val$target:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;Ljava/io/File;Ljava/io/File;)V
    .registers 4

    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    iput-object p2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->val$cache:Ljava/io/File;

    iput-object p3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->val$target:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->access$300(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to unzip file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->val$cache:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onFileProgress(II)V
    .registers 3

    return-void
.end method

.method public onProgress(II)V
    .registers 3

    return-void
.end method

.method public onSuccess()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success to unzip file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->val$cache:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EgretRuntimeLibrary"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->val$cache:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to delete file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->val$cache:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->val$target:Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    invoke-static {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->access$400(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    move-result-object v1

    invoke-virtual {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->checkMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->access$300(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    move-result-object v0

    const-string v1, "target file md5 error"

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_5c
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->access$300(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onSuccess()V

    return-void
.end method
