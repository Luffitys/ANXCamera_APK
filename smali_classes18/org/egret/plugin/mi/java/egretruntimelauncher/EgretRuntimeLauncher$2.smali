.class Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;
.super Ljava/lang/Object;
.source "EgretRuntimeLauncher.java"

# interfaces
.implements Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updateLibrary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

.field final synthetic val$library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)V
    .registers 3

    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    iput-object p2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->val$library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to download file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->val$library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " detail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->handleError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$100(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    return-void
.end method

.method public onProgress(II)V
    .registers 6

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mapFileSize:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$400(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->val$library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # invokes: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updateDownLoadSum()V
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$500(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$800(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I
    invoke-static {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$600(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)I

    move-result v1

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->fileSizeSum:I
    invoke-static {v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$700(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onProgressTotal(II)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    iget v1, v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updatedNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updatedNumber:I

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # invokes: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updated()V
    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$300(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V

    return-void
.end method
