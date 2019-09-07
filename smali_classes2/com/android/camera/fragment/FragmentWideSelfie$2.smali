.class Lcom/android/camera/fragment/FragmentWideSelfie$2;
.super Ljava/lang/Object;
.source "FragmentWideSelfie.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentWideSelfie;->setShootingUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentWideSelfie;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$2;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentWideSelfie$2;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie$2;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$100(Lcom/android/camera/fragment/FragmentWideSelfie;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x12c

    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
