.class Lcom/android/camera/animation/AnimationComposite$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field final synthetic this$0:Lcom/android/camera/animation/AnimationComposite;


# direct methods
.method constructor <init>(Lcom/android/camera/animation/AnimationComposite;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite$1;->this$0:Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite$1;->this$0:Lcom/android/camera/animation/AnimationComposite;

    invoke-static {p0, p1}, Lcom/android/camera/animation/AnimationComposite;->access$002(Lcom/android/camera/animation/AnimationComposite;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;

    return-void
.end method
