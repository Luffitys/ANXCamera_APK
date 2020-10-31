.class Lmiui/maml/NotifierManager$DarkModeNotifier$2;
.super Landroid/database/ContentObserver;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager$DarkModeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/NotifierManager$DarkModeNotifier;


# direct methods
.method constructor <init>(Lmiui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier$2;->this$0:Lmiui/maml/NotifierManager$DarkModeNotifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier$2;->this$0:Lmiui/maml/NotifierManager$DarkModeNotifier;

    # invokes: Lmiui/maml/NotifierManager$DarkModeNotifier;->updateDarkWallpaperMode()V
    invoke-static {v0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->access$400(Lmiui/maml/NotifierManager$DarkModeNotifier;)V

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier$2;->this$0:Lmiui/maml/NotifierManager$DarkModeNotifier;

    # invokes: Lmiui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V
    invoke-static {v0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->access$300(Lmiui/maml/NotifierManager$DarkModeNotifier;)V

    return-void
.end method
