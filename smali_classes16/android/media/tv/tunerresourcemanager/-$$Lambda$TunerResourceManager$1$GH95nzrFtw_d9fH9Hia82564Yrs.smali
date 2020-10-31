.class public final synthetic Landroid/media/tv/tunerresourcemanager/-$$Lambda$TunerResourceManager$1$GH95nzrFtw_d9fH9Hia82564Yrs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tunerresourcemanager/-$$Lambda$TunerResourceManager$1$GH95nzrFtw_d9fH9Hia82564Yrs;->f$0:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/-$$Lambda$TunerResourceManager$1$GH95nzrFtw_d9fH9Hia82564Yrs;->f$0:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-static {v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->lambda$onReclaimResources$0(Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V

    return-void
.end method
