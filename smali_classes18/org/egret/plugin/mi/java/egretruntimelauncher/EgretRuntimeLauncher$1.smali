.class Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;
.super Ljava/lang/Object;
.source "EgretRuntimeLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->fetchRemoteVersion()V
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

    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Lorg/egret/plugin/mi/android/util/launcher/NetClass;

    invoke-direct {v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;-><init>()V

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;
    invoke-static {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$000(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;

    invoke-direct {v2, p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->getRequest(Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    return-void
.end method
