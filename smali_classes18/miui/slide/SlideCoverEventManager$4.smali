.class Lmiui/slide/SlideCoverEventManager$4;
.super Ljava/lang/Object;
.source "SlideCoverEventManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method constructor <init>(Lmiui/slide/SlideCoverEventManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$4;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string v0, "SlideCoverEventManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$4;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {p2}, Lmiui/slide/ISliderViewService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/slide/ISliderViewService;

    move-result-object v1

    # setter for: Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;
    invoke-static {v0, v1}, Lmiui/slide/SlideCoverEventManager;->access$702(Lmiui/slide/SlideCoverEventManager;Lmiui/slide/ISliderViewService;)Lmiui/slide/ISliderViewService;

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$4;->this$0:Lmiui/slide/SlideCoverEventManager;

    # invokes: Lmiui/slide/SlideCoverEventManager;->showTipsView()V
    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$800(Lmiui/slide/SlideCoverEventManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "SlideCoverEventManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$4;->this$0:Lmiui/slide/SlideCoverEventManager;

    const/4 v1, 0x0

    # setter for: Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;
    invoke-static {v0, v1}, Lmiui/slide/SlideCoverEventManager;->access$702(Lmiui/slide/SlideCoverEventManager;Lmiui/slide/ISliderViewService;)Lmiui/slide/ISliderViewService;

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$4;->this$0:Lmiui/slide/SlideCoverEventManager;

    # invokes: Lmiui/slide/SlideCoverEventManager;->bindSliderView()V
    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$900(Lmiui/slide/SlideCoverEventManager;)V

    return-void
.end method
