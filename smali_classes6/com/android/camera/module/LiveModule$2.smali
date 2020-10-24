.class Lcom/android/camera/module/LiveModule$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/LiveModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/LiveModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/LiveModule$2;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/LiveModule$2;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-static {p0, p1}, Lcom/android/camera/module/LiveModule;->access$402(Lcom/android/camera/module/LiveModule;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;

    return-void
.end method
