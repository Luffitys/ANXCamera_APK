.class public final synthetic Lcom/android/camera/fragment/dialog/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic wb:Lcom/android/camera/fragment/dialog/FragmentLiveReview;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/j;->wb:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/j;->wb:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->c(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
