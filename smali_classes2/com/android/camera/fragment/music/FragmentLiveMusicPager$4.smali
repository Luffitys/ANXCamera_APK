.class Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;
.super Ljava/lang/Object;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onSelectedMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

.field final synthetic val$alert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iput-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;->val$alert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;->val$alert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf5

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    return-void
.end method
