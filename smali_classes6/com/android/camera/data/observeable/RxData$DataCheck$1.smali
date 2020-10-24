.class Lcom/android/camera/data/observeable/RxData$DataCheck$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/observeable/RxData$DataCheck;


# direct methods
.method constructor <init>(Lcom/android/camera/data/observeable/RxData$DataCheck;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData$DataCheck$1;->this$0:Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck$1;->this$0:Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-static {p0}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {p0, p1}, Lcom/android/camera/data/observeable/RxData;->access$100(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
