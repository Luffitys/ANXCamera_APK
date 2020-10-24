.class Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

.field final synthetic val$downloadPath:Ljava/lang/String;

.field final synthetic val$requestForPlayOrUse:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iput-boolean p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->val$requestForPlayOrUse:Z

    iput-object p3, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->val$downloadPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->downloadState:I

    iget-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->val$requestForPlayOrUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$300(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->val$downloadPath:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$400(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->accept(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method
