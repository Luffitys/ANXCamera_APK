.class Lmiui/hybrid/feature/Share$1;
.super Lmiui/hybrid/LifecycleListener;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Share;

.field final synthetic val$cb:Lmiui/hybrid/Callback;

.field final synthetic val$nativeInterface:Lmiui/hybrid/NativeInterface;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Share;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Callback;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/feature/Share$1;->this$0:Lmiui/hybrid/feature/Share;

    iput-object p2, p0, Lmiui/hybrid/feature/Share$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/Share$1;->val$cb:Lmiui/hybrid/Callback;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lmiui/hybrid/feature/Share$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-virtual {p1, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x0

    const-string p3, "success"

    invoke-direct {p1, p2, p3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lmiui/hybrid/Response;

    if-nez p2, :cond_1

    const/16 p2, 0x64

    const-string p3, "cancel"

    invoke-direct {p1, p2, p3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    :goto_0
    iget-object p0, p0, Lmiui/hybrid/feature/Share$1;->val$cb:Lmiui/hybrid/Callback;

    invoke-virtual {p0, p1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-void
.end method
