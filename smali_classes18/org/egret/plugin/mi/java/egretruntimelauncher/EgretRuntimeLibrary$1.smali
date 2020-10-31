.class Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;
.super Ljava/lang/Object;
.source "EgretRuntimeLibrary.java"

# interfaces
.implements Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)V
    .registers 2

    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->access$300(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(II)V
    .registers 4

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->access$300(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onProgress(II)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->access$000(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    # invokes: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doMove()Z
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->access$100(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    # invokes: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doUnzip()V
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->access$200(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)V

    :cond_16
    return-void
.end method
