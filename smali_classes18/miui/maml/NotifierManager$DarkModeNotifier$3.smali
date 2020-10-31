.class Lmiui/maml/NotifierManager$DarkModeNotifier$3;
.super Ljava/lang/Object;
.source "NotifierManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


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
.method constructor <init>(Lmiui/maml/NotifierManager$DarkModeNotifier;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lmiui/maml/NotifierManager$DarkModeNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lmiui/maml/NotifierManager$DarkModeNotifier;

    # invokes: Lmiui/maml/NotifierManager$DarkModeNotifier;->updateUIModeNight(Landroid/content/res/Configuration;)V
    invoke-static {v0, p1}, Lmiui/maml/NotifierManager$DarkModeNotifier;->access$500(Lmiui/maml/NotifierManager$DarkModeNotifier;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lmiui/maml/NotifierManager$DarkModeNotifier;

    # invokes: Lmiui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V
    invoke-static {v0}, Lmiui/maml/NotifierManager$DarkModeNotifier;->access$300(Lmiui/maml/NotifierManager$DarkModeNotifier;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    return-void
.end method
