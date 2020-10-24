.class Lio/reactivex/android/MainThreadDisposable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lio/reactivex/android/MainThreadDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/android/MainThreadDisposable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/android/MainThreadDisposable$1;->this$0:Lio/reactivex/android/MainThreadDisposable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/android/MainThreadDisposable$1;->this$0:Lio/reactivex/android/MainThreadDisposable;

    invoke-virtual {p0}, Lio/reactivex/android/MainThreadDisposable;->onDispose()V

    return-void
.end method
