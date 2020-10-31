.class Lmiui/hybrid/feature/Share$1;
.super Lmiui/hybrid/LifecycleListener;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Share;->invokeShareTo(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Share;

.field final synthetic val$cb:Lmiui/hybrid/Callback;

.field final synthetic val$nativeInterface:Lmiui/hybrid/NativeInterface;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Share;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Callback;)V
    .registers 4

    iput-object p1, p0, Lmiui/hybrid/feature/Share$1;->this$0:Lmiui/hybrid/feature/Share;

    iput-object p2, p0, Lmiui/hybrid/feature/Share$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/Share$1;->val$cb:Lmiui/hybrid/Callback;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    iget-object v0, p0, Lmiui/hybrid/feature/Share$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v0, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_13

    new-instance v1, Lmiui/hybrid/Response;

    const/4 v2, 0x0

    const-string v3, "success"

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_28

    :cond_13
    if-nez p2, :cond_20

    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0x64

    const-string v3, "cancel"

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_28

    :cond_20
    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lmiui/hybrid/Response;-><init>(I)V

    move-object v0, v1

    :goto_28
    iget-object v1, p0, Lmiui/hybrid/feature/Share$1;->val$cb:Lmiui/hybrid/Callback;

    invoke-virtual {v1, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-void
.end method
