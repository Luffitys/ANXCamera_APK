.class final Lmiui/view/RingerModeLayout$SilenceModeObserver;
.super Landroid/database/ContentObserver;
.source "RingerModeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SilenceModeObserver"
.end annotation


# instance fields
.field private final silence_mode:Landroid/net/Uri;

.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method public constructor <init>(Lmiui/view/RingerModeLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;
    invoke-static {p1}, Lmiui/view/RingerModeLayout;->access$600(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->silence_mode:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zenmode changeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mCurrentMode:I
    invoke-static {v2}, Lmiui/view/RingerModeLayout;->access$200(Lmiui/view/RingerModeLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingerModeLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    # setter for: Lmiui/view/RingerModeLayout;->mCurrentMode:I
    invoke-static {v1, v0}, Lmiui/view/RingerModeLayout;->access$202(Lmiui/view/RingerModeLayout;I)I

    iget-object v1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;
    invoke-static {v1}, Lmiui/view/RingerModeLayout;->access$600(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmiui/view/RingerModeLayout$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public register()V
    .registers 5

    iget-object v0, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->silence_mode:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister()V
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    # getter for: Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
