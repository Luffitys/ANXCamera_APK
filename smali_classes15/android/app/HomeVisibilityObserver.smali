.class public abstract Landroid/app/HomeVisibilityObserver;
.super Ljava/lang/Object;
.source "HomeVisibilityObserver.java"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field mIsHomeActivityVisible:Z

.field mObserver:Landroid/app/IProcessObserver$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/HomeVisibilityObserver$1;

    invoke-direct {v0, p0}, Landroid/app/HomeVisibilityObserver$1;-><init>(Landroid/app/HomeVisibilityObserver;)V

    iput-object v0, p0, Landroid/app/HomeVisibilityObserver;->mObserver:Landroid/app/IProcessObserver$Stub;

    return-void
.end method

.method static synthetic access$000(Landroid/app/HomeVisibilityObserver;)Z
    .registers 2

    invoke-direct {p0}, Landroid/app/HomeVisibilityObserver;->isHomeActivityVisible()Z

    move-result v0

    return v0
.end method

.method private isHomeActivityVisible()Z
    .registers 8

    iget-object v0, p0, Landroid/app/HomeVisibilityObserver;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_47

    :cond_11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    return v2

    :cond_20
    new-instance v4, Landroid/content/Intent;

    const/4 v5, 0x0

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Landroid/app/HomeVisibilityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_46

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    return v1

    :cond_46
    return v2

    :cond_47
    :goto_47
    return v2
.end method


# virtual methods
.method init(Landroid/content/Context;Landroid/app/ActivityManager;)V
    .registers 4

    iput-object p1, p0, Landroid/app/HomeVisibilityObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/HomeVisibilityObserver;->mActivityManager:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/HomeVisibilityObserver;->isHomeActivityVisible()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/HomeVisibilityObserver;->mIsHomeActivityVisible:Z

    return-void
.end method

.method public abstract onHomeVisibilityChanged(Z)V
.end method
