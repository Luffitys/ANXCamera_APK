.class Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field final synthetic this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;


# direct methods
.method constructor <init>(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {p0, p1}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$002(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;

    return-void
.end method
