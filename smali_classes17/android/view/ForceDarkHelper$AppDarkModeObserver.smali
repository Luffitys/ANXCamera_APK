.class Landroid/view/ForceDarkHelper$AppDarkModeObserver;
.super Landroid/app/IAppDarkModeObserver$Stub;
.source "ForceDarkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ForceDarkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppDarkModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ForceDarkHelper;


# direct methods
.method private constructor <init>(Landroid/view/ForceDarkHelper;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ForceDarkHelper$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelper;

    invoke-direct {p0}, Landroid/app/IAppDarkModeObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ForceDarkHelper;Landroid/view/ForceDarkHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ForceDarkHelper$AppDarkModeObserver;-><init>(Landroid/view/ForceDarkHelper;)V

    return-void
.end method


# virtual methods
.method public onAppDarkModeChanged(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/ForceDarkHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/ForceDarkHelper$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelper;

    # getter for: Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ForceDarkHelper;->access$100(Landroid/view/ForceDarkHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ForceDarkHelper$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelper;

    # getter for: Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ForceDarkHelper;->access$100(Landroid/view/ForceDarkHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " onAppDarkModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ForceDarkHelper$AppDarkModeObserver;->this$0:Landroid/view/ForceDarkHelper;

    # setter for: Landroid/view/ForceDarkHelper;->mIsAppDarkModeEnable:Z
    invoke-static {v0, p1}, Landroid/view/ForceDarkHelper;->access$202(Landroid/view/ForceDarkHelper;Z)Z

    return-void
.end method
