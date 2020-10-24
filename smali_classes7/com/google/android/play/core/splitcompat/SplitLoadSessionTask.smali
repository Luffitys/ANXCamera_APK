.class final Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;


# instance fields
.field private final changer:Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;

.field private final splitFileIntents:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;->splitFileIntents:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;->changer:Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;->changer:Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->changeStatus(I)V

    return-void
.end method

.method public onFailed(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;->changer:Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->changeStatus(II)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;->splitFileIntents:Ljava/util/List;

    if-nez v0, :cond_0

    const/16 v0, -0x64

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;->onFailed(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;->splitFileIntents:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->createSplitLoadTask(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
