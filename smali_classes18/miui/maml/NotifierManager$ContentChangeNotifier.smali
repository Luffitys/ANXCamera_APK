.class public Lmiui/maml/NotifierManager$ContentChangeNotifier;
.super Lmiui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentChangeNotifier"
.end annotation


# instance fields
.field protected final mObserver:Landroid/database/ContentObserver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/maml/NotifierManager$ContentChangeNotifier$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/NotifierManager$ContentChangeNotifier$1;-><init>(Lmiui/maml/NotifierManager$ContentChangeNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    iput-object p2, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected onRegister()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lmiui/maml/NotifierManager$ContentChangeNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected onUnregister()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
