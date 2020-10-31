.class Landroid/app/FilePinner$PinTask;
.super Ljava/lang/Object;
.source "FilePinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FilePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinTask"
.end annotation


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mGoodToLock:Z

.field private mPkgInfo:Landroid/app/LoadedApk;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FilePinner$PinTask;->mGoodToLock:Z

    iput-boolean p3, p0, Landroid/app/FilePinner$PinTask;->mGoodToLock:Z

    iput-object p1, p0, Landroid/app/FilePinner$PinTask;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Landroid/app/FilePinner$PinTask;->mPkgInfo:Landroid/app/LoadedApk;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/app/FilePinner$PinTask;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/app/FilePinner$PinTask;->mPkgInfo:Landroid/app/LoadedApk;

    # invokes: Landroid/app/FilePinner;->getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/app/FilePinner;->access$000(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iget-boolean v1, p0, Landroid/app/FilePinner$PinTask;->mGoodToLock:Z

    # invokes: Landroid/app/FilePinner;->recordHotPages(Ljava/util/ArrayList;Z)V
    invoke-static {v0, v1}, Landroid/app/FilePinner;->access$100(Ljava/util/ArrayList;Z)V

    :cond_13
    return-void
.end method
