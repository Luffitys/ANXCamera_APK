.class Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->loadInstalledSplits()V

    const/4 p0, 0x0

    return p0
.end method
