.class Lcom/android/camera/data/cloud/DataCloudMgr$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/cloud/DataCloudMgr;


# direct methods
.method constructor <init>(Lcom/android/camera/data/cloud/DataCloudMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/cloud/DataCloudMgr$1;->this$0:Lcom/android/camera/data/cloud/DataCloudMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .param p1    # Lio/reactivex/CompletableEmitter;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/camera/data/cloud/DataCloudMgr$1;->this$0:Lcom/android/camera/data/cloud/DataCloudMgr;

    invoke-static {p0}, Lcom/android/camera/data/cloud/DataCloudMgr;->access$000(Lcom/android/camera/data/cloud/DataCloudMgr;)V

    return-void
.end method
