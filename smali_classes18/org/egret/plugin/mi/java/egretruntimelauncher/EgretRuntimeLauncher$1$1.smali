.class Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;
.super Ljava/lang/Object;
.source "EgretRuntimeLauncher.java"

# interfaces
.implements Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;)V
    .registers 2

    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;->this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;->this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    iget-object v0, v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # invokes: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->handleError(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$100(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(II)V
    .registers 3

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_c

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;->this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    iget-object v0, v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    const-string v1, "response content is null"

    # invokes: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->handleError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$100(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;->this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    iget-object v0, v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # invokes: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->parseRuntimeVersion(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$200(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V

    return-void
.end method
