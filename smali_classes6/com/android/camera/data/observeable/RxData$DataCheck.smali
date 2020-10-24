.class final Lcom/android/camera/data/observeable/RxData$DataCheck;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private owner:Landroidx/lifecycle/LifecycleOwner;

.field private final predicateCheck:Lio/reactivex/functions/Predicate;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/data/observeable/RxData$DataCheck$1;

    invoke-direct {v0, p0}, Lcom/android/camera/data/observeable/RxData$DataCheck$1;-><init>(Lcom/android/camera/data/observeable/RxData$DataCheck;)V

    iput-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->predicateCheck:Lio/reactivex/functions/Predicate;

    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->owner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->owner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method


# virtual methods
.method getPredicateCheck()Lio/reactivex/functions/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->predicateCheck:Lio/reactivex/functions/Predicate;

    return-object p0
.end method
