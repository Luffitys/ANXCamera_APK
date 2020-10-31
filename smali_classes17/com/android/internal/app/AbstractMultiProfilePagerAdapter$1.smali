.class Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field final synthetic val$userManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Landroid/os/UserManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    iput-object p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->val$userManager:Landroid/os/UserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$requestQuietModeEnabled$0(Landroid/os/UserManager;ZLandroid/os/UserHandle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    return-void
.end method


# virtual methods
.method public hasCrossProfileIntents(Ljava/util/List;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    # invokes: Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->hasCrossProfileIntents(Ljava/util/List;II)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->access$000(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->val$userManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public requestQuietModeEnabled(ZLandroid/os/UserHandle;)V
    .registers 6

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->val$userManager:Landroid/os/UserManager;

    new-instance v2, Lcom/android/internal/app/-$$Lambda$AbstractMultiProfilePagerAdapter$1$iSo32hCiHlak2AHe-5mrZqhJq5E;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/internal/app/-$$Lambda$AbstractMultiProfilePagerAdapter$1$iSo32hCiHlak2AHe-5mrZqhJq5E;-><init>(Landroid/os/UserManager;ZLandroid/os/UserHandle;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mIsWaitingToEnableWorkProfile:Z
    invoke-static {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->access$102(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Z)Z

    return-void
.end method
