.class Lcom/android/camera/PreviewMetadata$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field final synthetic this$0:Lcom/android/camera/PreviewMetadata;


# direct methods
.method constructor <init>(Lcom/android/camera/PreviewMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/PreviewMetadata$2;->this$0:Lcom/android/camera/PreviewMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/PreviewMetadata$2;->this$0:Lcom/android/camera/PreviewMetadata;

    invoke-static {p0}, Lcom/android/camera/PreviewMetadata;->access$100(Lcom/android/camera/PreviewMetadata;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
