.class Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;
.super Ljava/lang/Object;
.source "EgretRuntimeLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->notifyLoadHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V
    .registers 2

    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->getEgretGameEngineClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;
    invoke-static {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$800(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    move-result-object v1

    const-string v2, "fails to new game engine"

    invoke-interface {v1, v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onError(Ljava/lang/String;)V

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    return-void

    :cond_19
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;
    invoke-static {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$800(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onSuccess(Ljava/lang/Class;)V

    return-void
.end method
