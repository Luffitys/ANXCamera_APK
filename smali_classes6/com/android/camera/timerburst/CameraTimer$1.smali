.class Lcom/android/camera/timerburst/CameraTimer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# instance fields
.field final synthetic this$0:Lcom/android/camera/timerburst/CameraTimer;


# direct methods
.method constructor <init>(Lcom/android/camera/timerburst/CameraTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {p0}, Lcom/android/camera/timerburst/CameraTimer;->access$100(Lcom/android/camera/timerburst/CameraTimer;)Lio/reactivex/Observer;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {p0}, Lcom/android/camera/timerburst/CameraTimer;->access$100(Lcom/android/camera/timerburst/CameraTimer;)Lio/reactivex/Observer;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/camera/timerburst/CameraTimer;->access$314(Lcom/android/camera/timerburst/CameraTimer;J)J

    iget-object p0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {p0}, Lcom/android/camera/timerburst/CameraTimer;->access$200(Lcom/android/camera/timerburst/CameraTimer;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/CameraTimer$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {v0, p1}, Lcom/android/camera/timerburst/CameraTimer;->access$002(Lcom/android/camera/timerburst/CameraTimer;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {v0}, Lcom/android/camera/timerburst/CameraTimer;->access$100(Lcom/android/camera/timerburst/CameraTimer;)Lio/reactivex/Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const-string p1, "CameraTimer"

    const-string v0, "onSubscribe"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {p0}, Lcom/android/camera/timerburst/CameraTimer;->access$200(Lcom/android/camera/timerburst/CameraTimer;)V

    return-void
.end method
