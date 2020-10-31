.class Lmiui/hybrid/feature/Mipay$1;
.super Lmiui/hybrid/LifecycleListener;
.source "Mipay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Mipay;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Mipay;

.field final synthetic val$nativeInterface:Lmiui/hybrid/NativeInterface;

.field final synthetic val$request:Lmiui/hybrid/Request;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Mipay;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V
    .registers 4

    iput-object p1, p0, Lmiui/hybrid/feature/Mipay$1;->this$0:Lmiui/hybrid/feature/Mipay;

    iput-object p2, p0, Lmiui/hybrid/feature/Mipay$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/Mipay$1;->val$request:Lmiui/hybrid/Request;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const v0, 0x1335188

    if-ne p1, v0, :cond_3e

    iget-object v0, p0, Lmiui/hybrid/feature/Mipay$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v0, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1c

    new-instance v1, Lmiui/hybrid/Response;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/hybrid/feature/Mipay$1;->this$0:Lmiui/hybrid/feature/Mipay;

    # invokes: Lmiui/hybrid/feature/Mipay;->makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;
    invoke-static {v3, p3}, Lmiui/hybrid/feature/Mipay;->access$000(Lmiui/hybrid/feature/Mipay;Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    move-object v0, v1

    goto :goto_35

    :cond_1c
    if-nez p2, :cond_2d

    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0x64

    iget-object v3, p0, Lmiui/hybrid/feature/Mipay$1;->this$0:Lmiui/hybrid/feature/Mipay;

    # invokes: Lmiui/hybrid/feature/Mipay;->makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;
    invoke-static {v3, p3}, Lmiui/hybrid/feature/Mipay;->access$000(Lmiui/hybrid/feature/Mipay;Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    move-object v0, v1

    goto :goto_35

    :cond_2d
    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lmiui/hybrid/Response;-><init>(I)V

    move-object v0, v1

    :goto_35
    iget-object v1, p0, Lmiui/hybrid/feature/Mipay$1;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    :cond_3e
    return-void
.end method
