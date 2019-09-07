.class Lcom/android/camera/data/observeable/RxData$DataCheck$1;
.super Ljava/lang/Object;
.source "RxData.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/observeable/RxData$DataCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "TT;>;"
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck$1;->this$0:Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-static {p0}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object p0

    sget-object p1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {p0, p1}, Lcom/android/camera/data/observeable/RxData;->access$100(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
