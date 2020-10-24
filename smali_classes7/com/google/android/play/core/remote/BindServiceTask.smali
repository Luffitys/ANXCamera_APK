.class final Lcom/google/android/play/core/remote/BindServiceTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source ""


# instance fields
.field private final remoteManager:Lcom/google/android/play/core/remote/RemoteManager;

.field private final task:Lcom/google/android/play/core/remote/RemoteTask;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/remote/RemoteManager;Lcom/google/android/play/core/remote/RemoteTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/remote/RemoteTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/remote/BindServiceTask;->remoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iput-object p2, p0, Lcom/google/android/play/core/remote/BindServiceTask;->task:Lcom/google/android/play/core/remote/RemoteTask;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/remote/BindServiceTask;->remoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iget-object p0, p0, Lcom/google/android/play/core/remote/BindServiceTask;->task:Lcom/google/android/play/core/remote/RemoteTask;

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/remote/RemoteManager;->bindServiceInternal(Lcom/google/android/play/core/remote/RemoteTask;)V

    return-void
.end method
