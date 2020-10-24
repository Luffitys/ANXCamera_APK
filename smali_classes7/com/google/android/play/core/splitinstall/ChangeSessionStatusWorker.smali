.class final Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final changer:Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;

.field private final errorCode:I

.field private final status:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;-><init>(Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;II)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;->changer:Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;

    iput p2, p0, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;->status:I

    iput p3, p0, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;->errorCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;->errorCode:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;->changer:Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;

    iget-object v2, v1, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    iget-object v1, v1, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->sessionState:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iget p0, p0, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;->status:I

    invoke-virtual {v1, p0, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->a(II)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->notifyListeners(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;->changer:Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;

    iget-object v1, v0, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->sessionState:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iget p0, p0, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;->status:I

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->a(I)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->notifyListeners(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
