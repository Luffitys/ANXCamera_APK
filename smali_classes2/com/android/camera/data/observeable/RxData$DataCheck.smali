.class final Lcom/android/camera/data/observeable/RxData$DataCheck;
.super Ljava/lang/Object;
.source "RxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/observeable/RxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private owner:Landroid/arch/lifecycle/LifecycleOwner;

.field private final predicateCheck:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/data/observeable/RxData$DataCheck$1;

    invoke-direct {v0, p0}, Lcom/android/camera/data/observeable/RxData$DataCheck$1;-><init>(Lcom/android/camera/data/observeable/RxData$DataCheck;)V

    iput-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->predicateCheck:Lio/reactivex/functions/Predicate;

    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    return-object p0
.end method


# virtual methods
.method getPredicateCheck()Lio/reactivex/functions/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Predicate<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataCheck;->predicateCheck:Lio/reactivex/functions/Predicate;

    return-object p0
.end method
