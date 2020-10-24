.class Lcom/android/camera/MiuiCameraSound$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field final synthetic this$0:Lcom/android/camera/MiuiCameraSound;


# direct methods
.method constructor <init>(Lcom/android/camera/MiuiCameraSound;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound$2;->this$0:Lcom/android/camera/MiuiCameraSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/MiuiCameraSound$2;->this$0:Lcom/android/camera/MiuiCameraSound;

    invoke-static {p0, p1}, Lcom/android/camera/MiuiCameraSound;->access$002(Lcom/android/camera/MiuiCameraSound;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;

    return-void
.end method
