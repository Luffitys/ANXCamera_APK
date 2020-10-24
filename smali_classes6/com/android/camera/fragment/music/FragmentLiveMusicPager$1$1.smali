.class Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1$1;->this$1:Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;

    iput-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->setLiveMusicFirstRequestTime(J)V

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1$1;->this$1:Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;

    iget-object v0, v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1$1;->val$list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$000(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
